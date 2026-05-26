# Project Notes

## Build

Build from Windows through the installed Ubuntu WSL distribution. The Codex
sandbox may not see the distro, so run WSL commands outside the sandbox when
needed.

```powershell
wsl -d Ubuntu -- bash -lc "cd '/mnt/d/Claude Code/pokered-custom-de' && make 2>&1"
```

Expected tools inside WSL:

- `make` at `/usr/bin/make`
- RGBDS tools at `/usr/local/bin/`
- verified RGBDS version: `rgbasm v1.0.1`

The successful full build produces:

- `pokered.gbc`
- `pokeblue.gbc`
- `pokeblue_debug.gbc`

