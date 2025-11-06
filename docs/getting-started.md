# Getting Started

**Part of Ready-to-Review** - [Home](index.md) | [Dashboard](dashboard.md) | [Slack](slack.md) | [Goose](goose.md) | [GitHub Bot](github-bot.md) | [Plans](plans.md)

Three steps: GitHub App, then optionally Slack and Goose.

## Prerequisites

- GitHub org admin access
- (Optional) Slack workspace admin
- (Optional) For Goose: `gh`, Go 1.23.4+

## Step 1: GitHub App (Required)

The GitHub App is required for all Ready-to-Review features. It enables:
- Real-time PR notifications to Dashboard, Slack, and Goose
- Automated reviewer assignment
- PR state tracking

Install: https://github.com/apps/ready-to-review-beta

Click **Install**, choose **All repositories** or select specific repos, click **Install**.

Verify: Visit the dashboard (see URLs below), click **Login with GitHub**. You should see existing PRs appear (typical: 15-30 seconds, max: 60 seconds).

**Dashboard URLs:**
- Personal/individual accounts: [dash.ready-to-review.dev](https://dash.ready-to-review.dev)
- GitHub organizations: `<your-org>.ready-to-review.dev` (replace with your org name)

Create a test PR to verify reviewer assignment.

## Step 2: Slack (Optional)

Install: https://slack.com/oauth/v2/authorize?client_id=9426269265270.9443955134789&scope=channels:history,channels:read,chat:write,chat:write.public,commands,im:write,reactions:write,team:read,users:read,users:read.email,groups:read,groups:history&user_scope=

Click **Add to Slack**, select workspace, click **Allow**.

### Channel Mapping

By default, repos map to same-named channels (`api-server` → `#api-server`).

For custom mapping:

1. Create a repository named `.codeGROOVE` in your GitHub organization (note the leading dot)
2. Add a file named `slack.yaml` to that repository with the following content:

```yaml
global:
    slack: yourworkspace.slack.com

channels:
    engineering:
        repos:
            - api-server
            - mobile-app

    # Catch all others
    general:
        repos:
            - "*"
```

3. Commit and push to the `.codeGROOVE` repository

Verify: Create test PR in any repo, check for message in configured channel (typical: 15-30 seconds, max: 60 seconds).

### Notification Settings

```yaml
global:
    slack: yourworkspace.slack.com
    reminder_dm_delay: 65  # Minutes before DM if in channel (default: 65)
    daily_reminders: true  # 8-9am local time (default: true)
```

Full config: [Slack Integration](slack.md#configuration)

## Step 3: Goose (Optional)

Desktop notifications. Build from source (Homebrew package coming soon).

### macOS / Linux / BSD

```bash
# Install dependencies
brew install gh go  # macOS
# or
sudo apt install golang-go gh  # Debian/Ubuntu

# Authenticate
gh auth status || gh auth login

# Build and run
git clone https://github.com/ready-to-review/goose.git
cd goose && make run
```

macOS: Click menu bar icon → **Start at Login** for auto-start.

### Windows

Install: [Go](https://go.dev/dl/), [GitHub CLI](https://cli.github.com/)

```powershell
gh auth login
git clone https://github.com/ready-to-review/goose.git
cd goose
go build -o goose.exe ./cmd/goose
.\goose.exe
```

### Fine-Grained Token (Optional)

For repo-specific access, use a [fine-grained token](https://github.com/settings/personal-access-tokens/new):

Permissions: Pull requests (read), Metadata (read)

```bash
env GITHUB_TOKEN=your_token_here goose
```

Verify: Menu bar/system tray icon appears. Create test PR, expect notification (typical: 15-30 seconds, max: 60 seconds).

## Problems?

https://github.com/codeGROOVE-dev/support
