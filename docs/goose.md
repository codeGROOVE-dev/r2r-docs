# Goose Desktop App

Native desktop notifications for macOS, Linux, Windows, BSD. Honks when you're blocking someone's PR, jet sounds when your PR advances.

## Installation

--8<-- "docs/.snippets/desktop-integration-goose.md"

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
