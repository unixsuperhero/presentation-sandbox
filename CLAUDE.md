# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Docker-based presentation sandbox for isolated code demos. Each workspace is a self-contained presentation with slides, code samples, and demo states.

## Commands

```bash
# Build the Docker image
make build

# Run a workspace (by number or name pattern)
make run w=1           # matches 001.fundamentals
make run w=fund        # matches 001.fundamentals
make run w=git         # matches 002.git-workflow

# Build and run
make all w=1
```

## Architecture

```
├── bin/
│   ├── build          # docker-compose build wrapper
│   └── run            # workspace selector + docker-compose run
├── config/            # Mounted read-only into container
│   ├── nvim/          # Neovim config (kickstart.nvim base)
│   ├── demo.nvim/     # Presentation plugin (git submodule)
│   └── bin/           # Shell utilities (git helpers, etc.)
└── workspaces/        # Numbered presentation workspaces
    ├── 001.fundamentals/
    ├── 002.git-workflow/
    └── ...
```

**Docker environment**: Ruby 3.3 base with neovim, tmux, ripgrep, golang, starship. Presentation tools: `slides` (Go), `hiiro` (Ruby), `demo.nvim` (Neovim plugin).

**Workspace selection**: `bin/run` matches workspaces by number (zero-padded) or name substring, creates a symlink at `./workspace`, and launches docker-compose.

## Workspaces

Each workspace is an independent git repository containing:
- `slides.md` - Presentation content (rendered by `slides`)
- `code/` - Demo code samples
- `.demo/` - demo.nvim state files

Workspaces are gitignored from the main repo.

## demo.nvim (Presentation Plugin)

Highlights code lines/selections, records every state change, and steps through states like a slideshow.

Key commands:
- `:DemoHighlight` - Highlight visual selection
- `:DemoBookmark {name}` - Mark current state
- `:DemoNext`/`:DemoPrev` - Navigate bookmarks
- `:DemoNextStep`/`:DemoPrevStep` - Step through all states

Keymaps use `<leader>d` prefix (e.g., `<leader>dh` to highlight, `<leader>dn` for next).
