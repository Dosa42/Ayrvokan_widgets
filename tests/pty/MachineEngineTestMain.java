import com.nomone.vr_desktop.runtime.MachineEngine;
import com.nomone.vr_desktop.runtime.TerminalServer;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.concurrent.CountDownLatch;

public final class MachineEngineTestMain {
    public static void main(String[] args) throws Exception {
        MachineEngine engine = new MachineEngine(new File(args[0]), command -> {
            String[] nativeCommand = command.clone();
            if (Files.exists(Paths.get("/system/bin/linker64"))) nativeCommand[0] = System.getenv("PREFIX") + "/bin/env";
            return new ProcessBuilder(nativeCommand).start();
        });
        TerminalServer server = new TerminalServer(0, path -> new byte[0], () -> new TerminalServer.State("", null, ""), null, engine::request);
        Runtime.getRuntime().addShutdownHook(new Thread(() -> { server.close(); engine.close(); }));
        System.out.println("PORT=" + server.port());
        System.out.flush();
        new CountDownLatch(1).await();
    }
}
