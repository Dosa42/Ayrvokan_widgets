# Machine-engine protocol

The browser keeps interactive Bash, machine output and file operations separate. The machine view has no composer or user input field. Codex submits explicit commands over the runtime HTTP API on port 8766. Each order runs in an independent Ubuntu PRoot process. This executor does not invoke Codex CLI, Claude CLI or an LLM.

## Orders

POST `/control/orders` with `application/x-www-form-urlencoded` fields:

| Field | Value |
| --- | --- |
| id | Caller-chosen unique order identifier |
| source | Caller attribution, for example `codex` |
| cwd | Absolute Ubuntu working directory |
| arg | Repeated field, one exact argument per occurrence |

Arguments are passed as an argv array, without shell interpretation. To execute shell syntax, explicitly supply `/bin/bash`, `-c` and the script as separate arguments. Standard input is closed. stdout and stderr are recorded separately. The response contains the accepted order. Reusing an ID reports an error and does not execute another command.

GET `/control/status` or `/control/orders` returns schema `nomone.engine/1`, settings and order history. Order states are `queued`, `running`, `done`, `failed` or `interrupted`. Times are epoch milliseconds; exit is the process exit code when available. Output is actual captured text. Clicking an order in the browser selects its output without submitting commands.

POST `/control/checklist` with `id` and `state=pending|true|false` records the caller's machine checklist result. Command success and caller verification remain separate fields; the engine does not invent verification results.

## Persistence

Records, stdout, stderr and settings live in the Android app's private `files/ubuntu-engine` directory, outside the Ubuntu image. Each record is saved through a synchronized temporary file and rename. Completed history survives service restarts and APK updates that preserve app data. Orders interrupted by service/process death are marked `interrupted` on recovery. No previous command is replayed on recovery.

GET `/control/settings` reads metadata. POST to the same path accepts `mode`, `model`, `reasoning`, `skills`, `hooks` and `instructions`. These are persistent descriptors for the later harness. Saving them does not load an AI adapter or execute hooks. The only current execution mechanism is explicit argv. API errors use an HTTP error response with a text reason.

## Runtime telemetry

The UI polls the real HTTP health, SSH process state, Bash session registry and engine records. WebSocket status reflects the current browser socket. Controller attribution means the last received order's source and timestamp, not an agent heartbeat. Failed refreshes retain the last observations and visibly mark them stale.

CLIProxyAPI URL, model catalog, reasoning routing, auto-debug and the AI harness will be connected during their configuration work. Their current UI state is explicitly unconfigured. The existing phone proxy on port 8080 and independent native Codex backend are unchanged.
