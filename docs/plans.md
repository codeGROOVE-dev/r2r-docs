# Plans

**Part of Ready-to-Review** - [Home](index.md) | [Getting Started](getting-started.md) | [Security](security.md) | [Troubleshooting](troubleshooting.md)

All plans include: Automated reviewer assignment, turn-based PR tracking, Dashboard, Slack integration, Goose desktop app, real-time notifications.

## Plan Differences

| Feature | Grass Roots | Super-fan | Main Stage | Funk Master |
|---------|-------------|-----------|------------|-------------|
| **Repository Type** | Public only | Public & Private | Public & Private | Public & Private |
| **Infrastructure** | Multi-tenant | Multi-tenant | Isolated instance | Isolated instance |
| **Dashboard URL** | Shared | Shared | `<org>.ready-to-review.dev` | `<org>.ready-to-review.dev` |
| **Analytics** | Basic | Basic | Advanced | Advanced |
| **Support** | Community (GitHub issues) | Community (GitHub issues) | Priority (<24h) | Dedicated (<4h, Slack) |
| **Contracts** | Standard ToS | Standard ToS | Standard ToS | Custom MSA/DPA/BAA |

## Feature Details

### Private Repository Support

**Available in**: Super-fan, Main Stage, Funk Master

- Track PRs in private repositories
- Assign reviewers based on private repo Git history
- Display private PRs in Dashboard
- Send notifications for private PR activity

**Access**: Source code never accessed (only Git history and PR metadata)

**Setup**: Select private repositories during GitHub App installation

### Isolated Instance

**Available in**: Main Stage, Funk Master

- Dedicated URL: `<your-company>.ready-to-review.dev`
- Org-level configuration defaults
- Isolated data storage (not shared with other organizations)

**vs Multi-tenant**: Grass Roots/Super-fan share infrastructure and dashboard

### Advanced Analytics

**Available in**: Main Stage, Funk Master

**Basic analytics** (Grass Roots, Super-fan):
- Contributor leaderboard (PRs merged)
- Review counts per person

**Advanced analytics** (Main Stage, Funk Master):
- Median PR merge time
- Mean time to first review
- Mean time from approval to merge
- PRs per reviewer (active vs stale)
- Reviewer burnout indicators
- Bottleneck detection (slow reviewers, stuck PRs)
- Week-over-week velocity trends

### Support Levels

**Community** (Grass Roots, Super-fan):
- GitHub issue tracking
- Response: 2-5 business days

**Priority** (Main Stage):
- Email + GitHub issues
- Response: <24h business days, <48h weekends
- Direct engineering team access

**Dedicated** (Funk Master):
- Shared Slack channel with engineering team
- Response: <4h business days
- Video calls for complex issues
- Dedicated account manager

### Custom Contracts

**Available in**: Funk Master only

- Master Service Agreements (MSAs)
- Data Processing Agreements (DPAs) for GDPR/CCPA
- Business Associate Agreements (BAAs) for HIPAA
- Security questionnaire support
