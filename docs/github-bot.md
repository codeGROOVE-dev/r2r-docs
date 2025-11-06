# GitHub App

The GitHub App is the foundation of Ready-to-Review. It provides:

1. **Real-time notifications**: Sends PR events to Dashboard, Slack, and Goose instantly
2. **Automated reviewer assignment**: Assigns reviewers based on code ownership and workload
3. **PR state tracking**: Monitors CI status, approvals, and changes

**Required for all other components to function.**

**Part of Ready-to-Review** - [Home](index.md) | [Getting Started](getting-started.md) | [Dashboard](dashboard.md) | [Slack](slack.md) | [Goose](goose.md)

## How It Works

When you create or update a PR:

1. **GitHub webhook** fires and sends event to Ready-to-Review
2. **Real-time broadcast** to Dashboard, Slack, and Goose (15-30 seconds)
3. **Reviewer assignment** (for new PRs):
   - Runs `git blame` on changed files
   - Scores candidates by code ownership percentage
   - Filters out bots and overloaded reviewers (>9 active PRs)
   - Assigns top 1-3 reviewers
4. **State tracking** updates based on CI, approvals, and changes

**Typical response time:** 15-30 seconds
**Maximum wait time:** 60 seconds

If no reviewer is assigned after 60 seconds, see [Troubleshooting](troubleshooting.md#no-reviewers-assigned).

## Assignment Algorithm

**Code ownership** (highest weight): Who authored the most lines in changed files?

**Workload** (high weight): How many open PRs does reviewer have? Excludes if >9 active (non-stale) PRs.

**Activity** (medium weight): Recent GitHub activity

**Timezone** (low weight): Slight preference for reviewers in active hours

**Filtered out**: Bots (`dependabot`, `renovate`, etc.), service accounts, inactive users, PR author

## Workload Calculation

Counts only non-stale open PRs. PRs untouched for >90 days are considered stale and don't count.

Example: Bob has 12 assigned PRs. 3 updated recently, 9 stale. Effective workload: 3 PRs. Bob eligible for assignment.

## Installation & Configuration

Install the GitHub App: https://github.com/apps/ready-to-review-beta

Select repositories to monitor. The app will:
- Enable real-time notifications for all selected repos
- Automatically assign reviewers on new PRs
- Track PR state changes

To add/remove repos later: [GitHub Settings → Installed GitHub Apps](https://github.com/settings/installations) → Ready-to-Review → Configure → Repository access

## Behavior

**Draft PRs**: Not assigned until marked ready for review

**Manual assignments**: Bot won't override. Add/remove reviewers manually anytime.

**Reassignment**: Bot won't reassign if you remove reviewers. To trigger reassignment, close and reopen PR.

## GitHub Permissions

Required permissions:

- Pull requests: Read & Write (to assign reviewers)
- Repository contents: Read (for `git blame`)
- Repository metadata: Read
- Organization members: Read (to find candidates)

No access to: Source code contents, commit diffs, comments, issues, secrets

Details: [Security](security.md)

## Troubleshooting

**No reviewers assigned**: Check if PR is draft (mark ready for review). Verify GitHub App installed on repo. Check if all candidates overloaded (>9 PRs). Wait 60 seconds.

**Wrong reviewer assigned**: Remove manually, add correct reviewer. Bot learns from `git blame`, so recent code authors are assigned. Context matters more than history sometimes.

**Same person always assigned**: That person likely authored most code. Distribute code ownership by having others contribute to same areas. Check workload distribution in dashboard.

**Want to exclude someone**: No built-in exclusion list yet. Manually remove if assigned. Feature request: https://github.com/codeGROOVE-dev/support

**CODEOWNERS support**: Not yet implemented. Bot uses actual Git history instead of declared ownership. Planned feature.

More: https://github.com/codeGROOVE-dev/support
