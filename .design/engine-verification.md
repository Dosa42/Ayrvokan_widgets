# Runtime and machine-engine verification

The extended annotated drawing is implemented as a middle runtime column between interactive Bash and the two live file panes. It contains real server observations, explicit unconfigured proxy/model states, read-only Ubuntu engine output and received Codex orders with machine checklist states. The engine region and complete operations column have no form, input, textarea or editable content. Order buttons select recorded output and do not submit commands.

The HTTP integration suite passed exact argv and working-directory preservation with Unicode and shell metacharacters, separate stdout/stderr and exit codes, concurrent orders while another is blocked, rejection of duplicate IDs without execution, persistent settings/history/checklists and interrupted-order recovery without replay. Existing real PTY/WebSocket and file-operation suites also passed. CI now includes the engine suite.

An actual order submitted by the current Codex over port 8766 ran in the phone's Ubuntu rootfs. It reported `aarch64`, `/root`, expected stdout and stderr, and exit 0. Codex set its checklist to `true` through the machine API. That exact record, output, timestamps and checklist survived the subsequent APK update and service restart unchanged. Interactive Bash and SSH remained operational after startup.

Android Chrome verification observed the actual command and checklist, live server telemetry and both file panes, with no browser exceptions. Measured CSS widths 319, 768, 1099 and 1499 pixels and a wide viewport had no horizontal page overflow. Narrow widths stack regions, intermediate widths put the runtime below Bash, and wide widths show all three columns. Reduced-motion emulation passed. Screen-reader operation and actual browser 200% zoom remain untested.

Final APK SHA-256: `e417fe233384e2c1de262a0484633971747f64112be6a529632b42ad0610003c`. REA installation: `ev_318ab90f851515dee8829b0cf00d276ce271aedbe29fa8f9ffa064ecf22f6311`. Signature, native/DEX runtime identity, SSH payload and all 888 packaged assets passed verification. Java source comprises 12 classes/files and generated output 57 Smali classes.

Evidence outside the checkout: `../engine-install.json`, `../engine-runtime-result.json`, `../engine-browser-result.json`, `../icon-audit/engine-wide.png` and the comment-policy receipt `../policy.json`. Direct ADB/CDP was used for browser verification because the REA browser/screen providers were previously unavailable; REA supplied installation and launch evidence.

The prior progress was published before this implementation at `42d89b8ccb745c048c09ab4e27bf1375706ea15f` on `linux-runtime-rework`. This new engine/frontend work is local and installed. CLIProxyAPI configuration, model catalog and routing, auto-debug, the AI adapter and an enforced skills/hooks harness remain later work, explicitly shown as unconfigured. Persistent metadata does not imply those mechanisms are active.
