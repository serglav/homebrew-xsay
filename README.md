# homebrew-xsay

Homebrew tap for [xsay](https://github.com/serglav/xsay) **v3.5.1** — project-aware macOS TTS CLI with voice profiles, inline sound effects, and AI agent integration.

## Install

```bash
brew install serglav/xsay/xsay
```

Or add the tap first:

```bash
brew tap serglav/xsay
brew install xsay
```

## Update

```bash
brew upgrade xsay
```

## Quick Start

```bash
xsay "Hello world"                    # speak with system voice
xsay "{ping} Task complete {hero}"    # sound effects + speech
xsay zoe: "Different voice"           # switch voice profile
xsay evan++: "Faster"                 # speed boost (+20 wpm)
xsay -k                               # kill all speech instantly
```

## AI Agent Commands

| Command | Purpose |
|---------|---------|
| `xsay --context` | AI quick reference — usage, voices, pause rules, sounds |
| `xsay --afk` | Autonomous session protocol — self-contained, agent reads once |
| `xsay -k` / `--kill` | Kill switch — stops all speech + cleans up |

## Flags

| Flag | Action |
|------|--------|
| `-v NAME` | Select voice profile by section name |
| `-l` | List all profiles with voice/rate/vol/pitch/flags |
| `--sounds [name]` | List sound effects or preview one by name |
| `--update` | Sync built-in profiles from master config |
| `--config` | Show paths, architecture, config status |
| `--context` | AI-focused quick reference (dynamic voices + sounds) |
| `--afk` | Autonomous session protocol for AI agents |
| `-k`, `--kill` | Kill consumer + child processes, clean up FIFO |
| `--version` | Print version |
| `-h`, `--help` | Human-readable help |
| `flag:` | Shorthand — matches `flag=` key in profiles (e.g., `narrate:` -> zoe) |
| `name+:` | Speed modifier — +10 wpm per `+` (max `+++`) |

## Uninstall

```bash
brew uninstall xsay
```

## More

See the [full documentation](https://github.com/serglav/xsay) for voice profiles, sound effects, configuration, and Claude Code integration.
