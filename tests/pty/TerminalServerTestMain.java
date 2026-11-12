import com.nomone.vr_desktop.runtime.PtySession;
import com.nomone.vr_desktop.runtime.TerminalServer;
import com.nomone.vr_desktop.runtime.TerminalSessions;
import com.nomone.vr_desktop.runtime.FileWorkspace;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

public final class TerminalServerTestMain {
    public static void main(String[] arguments) throws Exception {
        Map<String, String> environment = new HashMap<>(System.getenv());
        environment.remove("LD_PRELOAD");
        environment.put("PS1", "WEB_PROMPT> ");
        environment.put("TERM", "xterm-256color");
        environment.put("LANG", "C.UTF-8");
        String[] values = environment.entrySet().stream().map(entry -> entry.getKey() + "=" + entry.getValue()).toArray(String[]::new);
        TerminalSessions sessions = new TerminalSessions((id, listener) -> new PtySession(Arrays.copyOfRange(arguments, 1, arguments.length), values, "/", 24, 80, listener), null);
        sessions.create();
        String fileRoot = System.getenv("NOMONE_FILE_TEST_ROOT");
        FileWorkspace workspace = fileRoot == null ? null : new FileWorkspace(command -> {
            String[] nativeCommand = command.clone();
            String prefix = System.getenv("PREFIX");
            if (prefix != null && Files.exists(Paths.get("/system/bin/linker64"))) nativeCommand[0] = prefix + "/bin/" + Paths.get(nativeCommand[0]).getFileName();
            ProcessBuilder builder = new ProcessBuilder(nativeCommand);
            builder.environment().clear();
            builder.environment().putAll(environment);
            return builder.start();
        }, Paths.get(fileRoot, "android-host").toString());
        TerminalServer server = new TerminalServer(0, path -> Files.readAllBytes(Paths.get(arguments[0], path)), sessions, workspace);
        Runtime.getRuntime().addShutdownHook(new Thread(() -> { server.close(); sessions.close(); if (workspace != null) workspace.close(); }));
        System.out.println("PORT=" + server.port());
        System.out.flush();
        new CountDownLatch(1).await();
    }
}
