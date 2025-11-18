# Dashboard

Web interface showing all PRs across your repositories.

## Installation

### Install GitHub App

--8<-- "docs/.snippets/github-app-install.md"

## Access

**For personal accounts / individual users:**
Navigate to [ready-to-review.dev](https://ready-to-review.dev)

**For GitHub organizations:**
Navigate to `<your-org>.ready-to-review.dev` (replace `<your-org>` with your GitHub organization name)

Example: If your org is `kubernetes`, visit [kubernetes.ready-to-review.dev](https://kubernetes.ready-to-review.dev)

Click **Login with GitHub**, authorize when prompted.

Sessions expire after 24 hours.

## Security & Privacy

OAuth scopes requested:

- `user:read` - Your username and profile
- `repo:status` - PR status and CI checks
- `read:org` - Organization membership

Data cached up to 28 days. No code access. Details: [Security](security.md)

## Interface

**Incoming**: PRs where you're assigned reviewer

**Outgoing**: PRs you created waiting for review or changes

**Drafts**: Your draft PRs not ready for review

### Status Tags

Each PR shows tags indicating what's blocking it:

- **Needs changes**: Fix CI failures, address review feedback, or resolve merge conflicts
- **Awaiting review**: Waiting for reviewers to approve
- **Ready to merge**: All approvals received, ready to ship
- **Draft**: Not ready for review yet
- **CI running**: Automated checks in progress

**Priority**: Focus on PRs where you're blocking progress (incoming PRs needing your review, or outgoing PRs needing your fixes).

### Search & Filter

Search box: Filter by PR title, repo name, author, or reviewer

Repository dropdown: Show PRs from specific repos only

Sort by: Updated, Created, Title, Repository

## Troubleshooting

**Can't log in**: Clear cookies for `*.ready-to-review.dev`, try incognito mode. Check GitHub Settings → Applications → Authorized OAuth Apps.

**No PRs shown**: Verify GitHub App installed on repos. Check [GitHub Settings → Installed GitHub Apps](https://github.com/settings/installations). Free plans don't include private repos.

**Wrong status**: Hard refresh (Ctrl+Shift+R or Cmd+Shift+R). Status cached up to 5 minutes.

**Slow**: Use repository filtering. Clear browser cache.

[Get Support →](https://github.com/codeGROOVE-dev/support/issues/new?template=support-request.md){ .md-button }
