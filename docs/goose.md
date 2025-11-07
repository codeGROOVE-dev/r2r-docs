# Goose Desktop App

Native desktop notifications for macOS, Linux, Windows, BSD. Honks when you're blocking someone's PR, jet sounds when your PR advances.

**Part of Ready-to-Review** - [Home](index.md) | [Getting Started](getting-started.md) | [GitHub Bot](github-bot.md) | [Dashboard](dashboard.md) | [Slack](slack.md)

## Prerequisites

- [GitHub App installed](getting-started.md#step-1-install-github-app-required) on your repositories (required for real-time PR notifications)
- GitHub CLI (`gh`) installed
- Go 1.23.4+ installed (for building from source)

## Installation

Build from source (Homebrew package coming soon).

### macOS

```bash
brew install gh go
gh auth status || gh auth login
git clone https://github.com/ready-to-review/goose.git
cd goose && make run
```

Auto-start: Click menu bar icon → **Start at Login**

### Linux

```bash
# Debian/Ubuntu
sudo apt install golang-go gh

# Fedora
sudo dnf install golang gh

gh auth login
git clone https://github.com/ready-to-review/goose.git
cd goose && make run
```

### Windows

Install: [Go](https://go.dev/dl/), [GitHub CLI](https://cli.github.com/)

```powershell
gh auth login
git clone https://github.com/ready-to-review/goose.git
cd goose
go build -o goose.exe ./cmd/goose
.\goose.exe
```

### BSD

```bash
pkg install go gh git  # FreeBSD
gh auth login
git clone https://github.com/ready-to-review/goose.git
cd goose && make run
```

## Configuration

### Fine-Grained Token

For repo-specific access instead of full GitHub account access:

Create token: https://github.com/settings/personal-access-tokens/new

Permissions: Pull requests (read), Metadata (read)

```bash
env GITHUB_TOKEN=your_token_here goose
```

Token not persisted to disk. Set environment variable each run.

### Organization Filtering

Click Goose icon → **Organization Filter** → Check/uncheck orgs

Useful to separate work and personal projects.

### Settings

Click Goose icon → **Settings**:

- Enable/disable audio notifications
- Auto-open PRs in browser (rate-limited: 1/min, 10/hr)
- Organization filter

## Security

Uses GitHub CLI credentials (stored by `gh` in OS keychain) or `GITHUB_TOKEN` env var.

Accesses: PR metadata (title, author, reviewers, status)

Does not access: Source code, commits, comments

No telemetry. No data transmission except GitHub API. Details: [Security](security.md)

## Troubleshooting

**No icon**: macOS: Check `ps aux | grep goose`, restart with `killall goose && make run`. Linux: Verify system tray support, install `libgtk-3-dev libappindicator3-dev`. Windows: Check hidden tray icons.

**No notifications**: Check OS notification permissions. Verify PRs exist (click icon). Create test PR.

**Auth failed**: Run `gh auth status`, re-auth with `gh auth login`. Check token permissions if using `GITHUB_TOKEN`.

**Crashes**: Run in foreground to see errors: `./goose`. Update: `git pull && make clean && make run`.

[Get Support →](https://github.com/codeGROOVE-dev/support/issues/new?template=support-request.md){ .md-button }
