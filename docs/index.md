# Ready-to-Review

Automated PR tracking that eliminates coordination overhead. PRs merge in under an hour instead of 4.5 days.

> **Note:** Ready-to-Review is developed by codeGROOVE. You'll see "codeGROOVE" in configuration files, support channels, and GitHub repositories.

## How It Works

Every PR has exactly one responsible party at any moment:

- **Author's turn** (Red): Fix CI, address feedback, resolve conflicts
- **Reviewer's turn** (Yellow): Review or re-review needed
- **Ready to merge** (Green): Approved, waiting for merge
- **In progress** (Gray): Draft or CI running

State changes trigger notifications. Turn-based clarity replaces ambiguity. See color-coded states in the [Dashboard](dashboard.md#status-colors).

Architecture: https://github.com/codeGROOVE-dev/architecture/blob/main/README.md

## Components

**[GitHub App](github-bot.md)** (required): Enables real-time notifications and assigns reviewers based on code ownership. Required for all other components to function. [Learn more →](github-bot.md)

**[Dashboard](dashboard.md)**: View all PRs at `dash.ready-to-review.dev` (personal) or `<org>.ready-to-review.dev` (organizations). Login with GitHub. [Learn more →](dashboard.md)

**[Slack](slack.md)**: Channel updates and DMs. Install from Slack app directory. [Learn more →](slack.md)

**[Goose](goose.md)**: Desktop notifications (macOS, Linux, Windows, BSD). Build from source. [Learn more →](goose.md)

Choose what you need. GitHub Bot + Dashboard is sufficient for most teams.

## Installation

[Getting Started](getting-started.md) - 5 minutes, three steps

## Additional Resources

- **[Plans](plans.md)** - Pricing and features for Free, Pro, and Enterprise tiers
- **[Security](security.md)** - Security architecture, data handling, and compliance
- **[Troubleshooting](troubleshooting.md)** - Common issues and solutions

## Support

Problems? [Open an issue](https://github.com/codeGROOVE-dev/support)

Design partners wanted: [Schedule a call](https://calendar.app.google/TbQmeX8iWnvx6Ci89)
