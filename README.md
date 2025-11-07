# Ready-to-Review Documentation

Documentation site built with [MkDocs Material](https://squidfunk.github.io/mkdocs-material/).

## Prerequisites

```bash
make install  # Creates Python virtual environment and installs mkdocs-material
```

The install command automatically:
- Creates a `.venv` directory with an isolated Python environment
- Installs all required dependencies
- Works on macOS, Linux, and Windows (with minor adjustments)

## Quick Start

```bash
make run      # Starts local dev server at http://localhost:8000
```

## Build & Deploy

```bash
make build   # Creates site/ directory
make clean   # Remove site/ directory
```

**Cloudflare Pages:**
- Build command: `mkdocs build`
- Deploy command: `npx wrangler deploy`
- Builds from `requirements.txt`, deploys `site/` via `wrangler.jsonc`

**GitHub Pages:** `make deploy`

## Structure

```
docs/
├── mkdocs.yml
├── README.md
└── docs/
    ├── index.md           # Overview
    ├── getting-started.md # Installation
    ├── dashboard.md       # Web dashboard
    ├── slack.md           # Slack integration
    ├── goose.md           # Desktop app
    ├── github-bot.md      # Reviewer assignment
    ├── plans.md           # Plan comparison
    ├── troubleshooting.md # Common issues
    └── security.md        # Security & privacy
```

## Writing Style

**Pike's rules**:
- Commands over explanation
- No repetition
- Assume basic competence
- Cut obvious warnings
- Brevity is paramount

**Structure pages naturally**:
- Installation → Configuration → Troubleshooting
- No forced templates
- Let each page breathe

## Deploy

GitHub Pages:
```bash
mkdocs gh-deploy
```

Custom domain: Add `CNAME` to `docs/`, configure DNS, deploy.
