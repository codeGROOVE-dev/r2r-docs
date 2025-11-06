# Plans & Features

**Part of Ready-to-Review** - [Home](index.md) | [Getting Started](getting-started.md) | [Security](security.md) | [Troubleshooting](troubleshooting.md)

Ready-to-Review offers four plans designed for different team sizes and needs. All plans include the core PR tracking features with varying levels of support and repository access.

## Plan Comparison

| Feature | Grass Roots | Super-fan | Main Stage | Funk Master |
|---------|-------------|-----------|------------|-------------|
| **Repository Type** | Public only | Public & Private | Public & Private | Public & Private |
| **Automated Reviewer Assignment** | ✓ | ✓ | ✓ | ✓ |
| **Turn-Based PR Tracking** | ✓ | ✓ | ✓ | ✓ |
| **Dashboard Access** | ✓ | ✓ | ✓ | ✓ |
| **Slack Integration** | ✓ | ✓ | ✓ | ✓ |
| **Goose Desktop App** | ✓ | ✓ | ✓ | ✓ |
| **Real-Time Notifications** | ✓ | ✓ | ✓ | ✓ |
| **Analytics & Leaderboards** | ✓ | ✓ | ✓ | ✓ |
| **Org-Specific Workspace** | ✗ | ✗ | ✓ | ✓ |
| **Team Leaderboards & Insights** | Basic | Basic | Advanced | Advanced |
| **Priority Support** | ✗ | ✗ | ✓ | ✓ |
| **Custom Contracts & DPAs** | ✗ | ✗ | ✗ | ✓ |
| **Security Questionnaire Support** | ✗ | ✗ | ✗ | ✓ |

## Plan Details

### Grass Roots

**Best for**: Open-source projects and public repositories

Free forever for open-source maintainers and contributors.

**Includes**:

- Automated reviewer assignment based on code ownership
- Turn-based PR tracking with clear state indicators
- Web dashboard at `<org>.ready-to-review.dev`
- Slack integration with channel and DM notifications
- Goose desktop app for native notifications (macOS, Linux, Windows, BSD)
- Basic analytics and contributor leaderboards (visible in organization dashboard)
- Multi-org support

**Limitations**:

- Public repositories only
- Community support via [GitHub issues](https://github.com/codeGROOVE-dev/support)
- Shared infrastructure (no dedicated instances)

**Ideal for**:

- Open-source projects
- Personal repositories
- Public documentation sites
- Community-driven development

---

### Super-fan

**Best for**: Individual developers working on private repositories

All Grass Roots features, plus support for private repositories.

**Adds**:

- **Private repository support**: Use Ready-to-Review on private repos

**Everything from Grass Roots**:

- Automated reviewer assignment
- Turn-based PR tracking
- Dashboard, Slack, and Goose integration
- Analytics and leaderboards

**Limitations**:

- Individual plan (not organization-wide features)
- Community support
- Shared infrastructure

**Ideal for**:

- Freelancers with private client repos
- Individual developers on private side projects
- Contributors to both public and private repos

---

### Main Stage

**Best for**: Engineering teams that need fast PR turnaround

Built for teams that move fast and need organization-wide coordination.

**Adds**:

- **Org-specific workspace**: Dedicated dashboard and configuration per organization
- **Team leaderboards**: Organization-wide dashboards tracking team velocity, top reviewers, and bottlenecks
- **Advanced insights**: Median PR time, review patterns, workload distribution
- **Priority support**: Faster response times, direct access to engineering team

**Everything from Super-fan**:

- Public and private repository support
- All integrations (Dashboard, Slack, Goose)
- Automated reviewer assignment
- Turn-based PR tracking

**Limitations**:

- No custom contracts or DPAs (use Funk Master for this)

**Ideal for**:

- Startups and scale-ups
- Engineering teams of 5-50 people
- Teams shipping multiple PRs per day
- Organizations needing velocity metrics

---

### Funk Master

**Best for**: Enterprises with compliance and legal requirements

Everything in Main Stage, plus enterprise support and contracts.

**Adds**:

- **Custom contracts**: Tailored MSAs, DPAs, and BAAs
- **Security questionnaire support**: We'll fill out your vendor questionnaires
- **Dedicated support**: Direct Slack channel with engineering team
- **SLA guarantees**: 99.9% uptime commitment
- **Custom integrations**: Work with our team for unique requirements

**Everything from Main Stage**:

- Org-specific workspace
- Team leaderboards and insights
- Priority support
- Public and private repo support

**Limitations**:

- None - this is the complete package

**Ideal for**:

- Enterprises with security teams
- Companies requiring vendor contracts
- Organizations with compliance requirements (SOC 2, HIPAA, GDPR)
- Large engineering organizations (50+ people)

## Feature Deep Dives

### Private Repository Support

**Plans**: Super-fan, Main Stage, Funk Master

Private repository support allows Ready-to-Review to:

- Track PRs in private repositories
- Assign reviewers based on private repo Git history
- Display private PRs in the Dashboard
- Send notifications for private PR activity

**What's protected**:

- Source code is never accessed (only Git history and PR metadata)
- Private repo names visible only to authorized org members
- Separate access controls per repository

**Setup**: Enable automatically by selecting private repositories during GitHub App installation.

### Org-Specific Workspace

**Plans**: Main Stage, Funk Master

Org-specific workspaces provide:

- **Dedicated URL**: `<your-company>.ready-to-review.dev` (not shared with other orgs)
- **Custom branding**: Upload your logo and colors (future feature)
- **Org-level settings**: Configure defaults for all repositories
- **Isolated data**: Your org's PRs never mix with other organizations

**vs Grass Roots/Super-fan**:

- Grass Roots/Super-fan share a multi-tenant dashboard
- Main Stage/Funk Master get isolated instances

### Team Leaderboards & Insights

Available in the organization dashboard at `<org>.ready-to-review.dev`.

**Basic (Grass Roots, Super-fan)**:

- Contributor leaderboard: Who merged the most PRs across the organization
- Review counts: Number of PRs reviewed per person

**Advanced (Main Stage, Funk Master)**:

- **Velocity metrics**:
    - Median PR merge time
    - Mean time to first review
    - Mean time from approval to merge
- **Workload distribution**:
    - PRs per reviewer (active vs stale)
    - Reviewer burnout indicators
- **Bottleneck detection**:
    - Identify consistently slow reviewers
    - Flag PRs stuck in specific states
- **Trend analysis**:
    - Week-over-week velocity changes
    - Team efficiency over time

### Priority Support

**Community Support (Grass Roots, Super-fan)**:

- GitHub issue tracking
- Response time: 2-5 business days
- Community-driven solutions

**Priority Support (Main Stage, Funk Master)**:

- Email and GitHub issue tracking
- Response time: <24 hours business days, <48 hours weekends
- Direct access to engineering team
- Feature request prioritization

**Dedicated Support (Funk Master only)**:

- Shared Slack channel with engineering team
- Response time: <4 hours business days
- Video calls for complex issues
- Dedicated account manager

### Custom Contracts & DPAs

**Funk Master only**

Enterprise teams often need:

- **Master Service Agreements (MSAs)**: Custom terms and conditions
- **Data Processing Agreements (DPAs)**: GDPR, CCPA compliance
- **Business Associate Agreements (BAAs)**: HIPAA compliance
- **Vendor security questionnaires**: We'll fill out your InfoSec team's forms

The Funk Master plan includes legal and compliance support to get contracts in place quickly.

## Billing & Upgrades

### Billing

All plans are billed through the **GitHub Marketplace**:

- Grass Roots: Free forever
- Paid plans: Monthly billing via your GitHub account
- No credit card needed for free trial

### Free Trials

Paid plans (Super-fan, Main Stage, Funk Master) include:

- **2-week free trial**
- Full access to all plan features
- No credit card required to start trial
- Cancel anytime during trial with no charges

### Upgrading

To upgrade your plan:

1. Go to the [GitHub Marketplace](https://github.com/marketplace)
2. Find "Ready-to-Review"
3. Click **Change plan**
4. Select your new plan
5. Confirm billing

Changes take effect immediately. You'll be prorated for the current billing period.

### Downgrading

To downgrade:

1. Follow the same steps as upgrading
2. Select a lower-tier plan
3. Confirm

When downgrading:

- You lose access to premium features immediately
- You keep access through the end of your current billing period
- No refunds for partial periods

!!! warning "Data Loss on Downgrade"
    Downgrading from Main Stage or Funk Master to lower tiers will:

    - Remove org-specific workspace (PRs move to shared workspace)
    - Delete advanced analytics history
    - Remove priority support access

### Canceling

To cancel your subscription:

1. Go to [GitHub Marketplace → Manage Subscriptions](https://github.com/settings/billing)
2. Find "Ready-to-Review"
3. Click **Cancel subscription**
4. Confirm cancellation

When you cancel:

- Access continues through end of billing period
- You'll downgrade to Grass Roots (free tier) automatically
- Private repository support is removed
- No refunds for partial periods

## FAQs

### Can I use multiple plans for different organizations?

Yes. Each GitHub organization has its own subscription:

- Your personal org: Grass Roots (free)
- Work org: Main Stage
- Client org: Super-fan

Each subscription is managed separately through GitHub Marketplace.

### What happens to private repos if I downgrade?

Private repositories will no longer be monitored by Ready-to-Review. Existing PR data in the dashboard will remain visible for 28 days, then be automatically deleted.

### Can I try Main Stage features before committing?

Yes. Use the 2-week free trial to test all features with no credit card required.

### Do prices change based on team size?

Currently, plans are flat-rate regardless of team size. Volume pricing is planned for future releases. Contact support for enterprise pricing if you have >100 engineers.

### Can I pay annually?

Annual billing is planned for future releases. Subscribe to the [support repository](https://github.com/codeGROOVE-dev/support) for updates.

### Is there a discount for open-source projects on paid plans?

Grass Roots is free forever for public repositories. If your open-source project needs private repository support, contact [support](https://github.com/codeGROOVE-dev/support) to discuss options.

### What payment methods do you accept?

Payment is processed through GitHub Marketplace, which accepts:

- Credit cards (Visa, Mastercard, Amex, Discover)
- Debit cards
- GitHub Sponsors credits

### Can I get an invoice for my subscription?

Yes. GitHub Marketplace provides invoices:

1. Go to [GitHub Settings → Billing](https://github.com/settings/billing)
2. Find "Ready-to-Review" in your subscriptions
3. Download invoice

## Next Steps

- [Get started](getting-started.md) with installation
- Review [Security & Privacy](security.md) for compliance details
- Learn about [Core Concepts](concepts.md) of turn-based PR tracking
- Open an issue in the [support repository](https://github.com/codeGROOVE-dev/support) with questions
