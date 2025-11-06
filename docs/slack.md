# Slack Integration

Posts PR updates to channels and sends DMs when action needed.

**Part of Ready-to-Review** - [Home](index.md) | [Getting Started](getting-started.md) | [GitHub Bot](github-bot.md) | [Dashboard](dashboard.md) | [Goose](goose.md)

## Prerequisites

- [GitHub App installed](getting-started.md#step-1-github-app) on your repositories (required for real-time PR notifications)
- Slack workspace admin access (for installation)
- GitHub and Slack accounts using the same email (for DM matching)

## Installation

https://slack.com/oauth/v2/authorize?client_id=9426269265270.9443955134789&scope=channels:history,channels:read,chat:write,chat:write.public,commands,im:write,reactions:write,team:read,users:read,users:read.email,groups:read,groups:history&user_scope=

Click **Add to Slack**, select workspace, **Allow**.

## Configuration

### Auto-Discovery

Repos automatically map to same-named channels:

- `api-server` repo → `#api-server` channel
- `mobile-app` repo → `#mobile-app` channel

No config required.

### Custom Mapping

To customize channel mapping, create a repository named `.codeGROOVE` in your GitHub organization, then add a file named `slack.yaml` to it:

**Steps:**
1. Create a new repository in your organization: `.codeGROOVE` (note the leading dot)
2. Add a file named `slack.yaml` with the following content:

```yaml
global:
    slack: yourworkspace.slack.com

channels:
    engineering:
        repos:
            - api-server
            - mobile-app

    frontend:
        repos:
            - website

    all-repos:
        repos:
            - "*"  # Wildcard

    # Mute auto-discovered channel
    internal-tools:
        mute: true
```

Precedence: Explicit mapping > Muted channel > Auto-discovery > Wildcard

**After editing `slack.yaml`:**

1. Validate YAML syntax at [yamllint.com](https://www.yamllint.com/) before committing
2. Commit and push changes to the `.codeGROOVE` repository
3. Changes take effect automatically (typical: 15-30 seconds, max: 60 seconds)
4. Create a test PR to verify the configuration

### Notification Timing

```yaml
global:
    slack: yourworkspace.slack.com
    reminder_dm_delay: 65  # Minutes before DM if user in channel (0 = immediate)
    daily_reminders: true  # 8-9am local time
```

Default: If user is in the channel where PR posted, DM delayed 65 minutes. If not in channel, immediate DM.

## Status Emojis

- 📯 Ready-to-Review prefix
- ✅ Approved
- 🔄 Changes requested
- 👀 Needs review
- 🔁 Needs re-review
- ❌ CI failed
- ✔️ CI passed
- ⚠️ Merge conflict
- 🎉 Merged

## Commands

`/r2r dashboard` - Open dashboard

`/r2r help` - Show help

## Security

Slack OAuth scopes:

- `channels:*`, `groups:*` - Read channels, detect if user saw notification
- `chat:write*` - Post messages
- `im:write` - Send DMs
- `users:read.email` - Match GitHub ↔ Slack users by email
- `team:read` - Workspace verification

User emails hashed for matching, never stored plaintext. Details: [Security](security.md)

## Troubleshooting

**No channel messages**: Verify app installed (Slack → Apps → Manage). Check `slack.yaml` syntax in your `.codeGROOVE` repository. Invite bot: `/invite @Ready-to-Review`. Verify workspace URL correct.

**No DMs**: Check email match (GitHub email = Slack email). Verify DM delay (default 65 min if in channel). Test: `/r2r help`.

**Too many notifications**: Increase `reminder_dm_delay: 120` or disable `daily_reminders: false`. Mute noisy repos.

**Wrong channel**: Check `slack.yaml` in your `.codeGROOVE` repository for typos. Review precedence rules above.

More: https://github.com/codeGROOVE-dev/support
