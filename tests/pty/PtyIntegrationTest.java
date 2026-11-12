import com.nomone.vr_desktop.runtime.PtySession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class PtyIntegrationTest {
    private static long cursor;

    private static String until(PtySession session, String marker) throws Exception {
        long deadline = System.nanoTime() + 15000000000L;
        StringBuilder result = new StringBuilder();
        while (System.nanoTime() < deadline) {
            PtySession.Output output = session.output(cursor);
            cursor = output.cursor;
            result.append(new String(output.bytes, StandardCharsets.UTF_8));
            if (result.indexOf(marker) >= 0) return result.toString();
            Thread.sleep(15);
        }
        throw new AssertionError("Ontbrekende uitvoer: " + marker + " / " + result);
    }

    private static void send(PtySession session, String command) throws Exception {
        session.write(command.getBytes(StandardCharsets.UTF_8));
    }

    public static void main(String[] command) throws Exception {
        List<String> environment = new ArrayList<>();
        for (Map.Entry<String, String> entry : System.getenv().entrySet()) {
            if (!entry.getKey().equals("LD_PRELOAD")) environment.add(entry.getKey() + "=" + entry.getValue());
        }
        environment.add("PS1=NOMONE_PROMPT> ");
        PtySession session = new PtySession(command, environment.toArray(new String[0]), "/", 24, 80, null);
        try {
            until(session, "NOMONE_PROMPT>");
            send(session, "stty -echo; printf 'PTY_'; test -t 0 && test -t 1 && printf 'OK\\n'; stty size\n");
            String initial = until(session, "24 80");
            if (!initial.contains("PTY_OK")) throw new AssertionError(initial);
            session.resize(41, 119);
            send(session, "stty size\n");
            until(session, "41 119");
            send(session, "printf 'INT_BEGIN\\n'; sleep 30; printf 'INT_END\\n'\n");
            until(session, "INT_BEGIN");
            Thread.sleep(150);
            send(session, "\u0003");
            until(session, "NOMONE_PROMPT>");
            send(session, "sleep 30 &\njobs\n");
            until(session, "Running");
            send(session, "kill %1; wait; printf 'JOB_DONE\\n'\n");
            until(session, "JOB_DONE");
            int pid = session.pid();
            long saved = cursor;
            send(session, "printf 'REATTACH_OK\\n'\n");
            until(session, "REATTACH_OK");
            PtySession.Output replay = session.output(saved);
            if (session.pid() != pid || !new String(replay.bytes, StandardCharsets.UTF_8).contains("REATTACH_OK")) throw new AssertionError("Sessie niet behouden");
            send(session, "head -c 100000 /dev/zero | tr '\\000' 'X'; printf '\\nRING_DONE\\n'\n");
            until(session, "RING_DONE");
            if (!session.output(0).truncated) throw new AssertionError("Uitvoerbuffer is niet begrensd");
            send(session, "exit 7\n");
            session.join(10000);
            if (session.running() || session.exitStatus() != 7 || !session.failure().isEmpty()) throw new AssertionError("Exit " + session.exitStatus() + " / " + session.failure());
            try {
                new PtySession(new String[]{"/nomone-missing-executable"}, new String[]{}, "/", 24, 80, null);
                throw new AssertionError("exec-fout niet gemeld");
            } catch (IOException expected) {
                if (!expected.getMessage().contains("PTY spawn")) throw expected;
            }
            cursor = 0;
            PtySession stopped = new PtySession(command, environment.toArray(new String[0]), "/", 24, 80, null);
            try {
                until(stopped, "NOMONE_PROMPT>");
                send(stopped, "stty -echo\n");
                until(stopped, "NOMONE_PROMPT>");
                send(stopped, "sleep 60 & printf 'CHILD=%s\\n' $!\n");
                String children = until(stopped, "CHILD=");
                Matcher child = Pattern.compile("CHILD=(\\d+)").matcher(children);
                if (!child.find()) throw new AssertionError(children);
                String childPid = child.group(1);
                stopped.stop();
                stopped.join(5000);
                if (stopped.running()) throw new AssertionError("Stop sluit PTY niet af");
                Thread.sleep(100);
                if (new java.io.File("/proc/" + childPid).exists()) throw new AssertionError("Achtergrondproces overleeft Stop: " + childPid);
            } finally {
                stopped.stop();
                stopped.join(5000);
            }
            System.out.println("PTY integration passed: real TTY, resize, Ctrl-C, job control, reattach, bounded output, exit 7, exec failure, Stop cleanup");
        } finally {
            session.stop();
            session.join(5000);
        }
    }
}
