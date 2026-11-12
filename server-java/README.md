# NoMone Ubuntu22.04Bare Java bootstrap

De Linux-knop gebruikt Ubuntu22.04Bare. Bij de eerste start pakt de Java-server de meegeleverde officiële Ubuntu Base 22.04.5 LTS ARM64-rootfs uit in `Context.getFilesDir()/Ubuntu22.04Bare`. Het archief staat in `assets/linux`; `ubuntu-base.json` legt bron, omvang en SHA-256 vast. De app hoeft de rootfs tijdens het starten niet te downloaden.

`LinuxApplication.getInstance()` roept `UbuntuRootfs.ensureInstalled()` aan. De eerste aanroep start één achtergrondtaak en retourneert zolang de installatie bezig is. Na volledige extractie wordt de stagingmap geactiveerd, de bestaande instelling `Linux image deployed` gezet en de bestaande Java-launcher automatisch opnieuw aangeroepen op de UI-thread. Een volgende start gebruikt de geïnstalleerde rootfs. Een reeds gedeployde Ubuntu-image met bestaande NoMone-startbestanden blijft bruikbaar.

`UbuntuImage` voert de extractie uit met NoMone BusyBox uit `common/bin`. De oorspronkelijke PRoot-, loader- en NoMone-clientbestanden worden hergebruikt. `NOMone/UbuntuBase22.04` selecteert in de bestaande bootloader het bare startpad. Dat start `startup.sh` en vervolgens `ProotClient`; diens bestaande FIFO-protocol meldt `Ready` aan de Java-server. Er wordt geen desktopomgeving geïnstalleerd. De eerste `startup.sh` bevat alleen een lege shellhook.

De huidige app-id is `nom.vrd`, dus het concrete rootfs-pad is `/data/data/nom.vrd/files/Ubuntu22.04Bare`. De start gebruikt de bestaande `PRoot -r ... /NOMone/boot.sh`-keten en de bestaande Linux-window-lifecycle.

## Broncode en DEX

`UbuntuRootfs.java` bevat de Android-koppeling; `UbuntuImage.java` de extractie. De app bevat hun gecompileerde Smali onder `smali_classes2/com/nomone/vr_desktop/runtime`. `build.json` legt de koppeling tussen broncode en gegenereerde classes vast.

```sh
python tools/build-server-java.py
python .github/scripts/vendor-ubuntu.py
python .github/scripts/verify-ubuntu.py
python .github/scripts/test-ubuntu.py
```

Voor regeneratie zijn JDK, Android SDK platform 35, D8 en `d2j-baksmali` nodig. `ANDROID_HOME` selecteert de SDK. De test gebruikt een lokale BusyBox; `NOMONE_TEST_BUSYBOX` kan het pad vastleggen.

De twee Java-integratietests gebruiken het echte Ubuntu-archief. Ze controleren onder meer extractie, foutieve archiefdata, Ubuntu-identiteit, runtimebestanden, eerste aanroep, één automatische launcherhervatting en een volgende start. Android-frameworkklassen en de launcher zijn daarvoor testdoubles. De APK-build compileert ook de Java-broncode tegen de echte Android SDK en assembleert de Smali. APK-verificatie controleert de ingebedde rootfs, bootstrapclasses en het bare bootpad.

De branchworkflow downloadt het vastgelegde officiële archief wanneer het nog niet in de checkout staat en commit het naar `linux-runtime-rework`. Vervolgens test en bouwt hij de APK. De geteste archivebron is:

https://cdimage.ubuntu.com/ubuntu-base/releases/22.04.5/release/ubuntu-base-22.04.5-base-arm64.tar.gz


The browser also includes the runtime monitor and read-only Ubuntu machine-engine panel. Codex can submit explicit argv orders independently of interactive Bash. Persistent records, output, checklist states and the HTTP protocol are documented in [ENGINE.md](ENGINE.md). The AI adapter and CLIProxyAPI configuration remain later work.
