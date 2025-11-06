# Security & Privacy

**Part of Ready-to-Review** - [Home](index.md) | [Getting Started](getting-started.md) | [Plans](plans.md) | [Troubleshooting](troubleshooting.md)

## Data Access

**GitHub permissions:**
- Pull requests: Read & Write (assign reviewers)
- Repository contents: Read (git blame for code ownership)
- Repository metadata: Read (repo name)
- Organization members: Read (find reviewers)

No access to: Source code contents, commit diffs, comments, issues, secrets.

**Slack permissions:**
- `channels:*`, `groups:*`: Read channels, detect notifications
- `chat:write*`: Post messages
- `im:write`: Send DMs
- `users:read.email`: Match GitHub ↔ Slack by email
- `team:read`: Workspace verification

No access to: Private DMs between users, files, billing, passwords.

**Goose:** Uses GitHub CLI credentials (OS keychain) or `GITHUB_TOKEN` env var. Accesses PR metadata only.

## Data Storage

| Data | Duration | Purpose |
|------|----------|---------|
| PR metadata | 28 days | Dashboard, notifications |
| Git blame | 24 hours | Code ownership |
| User mappings | 28 days | GitHub ↔ Slack matching |
| Reviewer workload | 6 hours | Prevent overload |
| Webhook events | 72 hours | Deduplication |

**Not stored:** Source code, tokens (not persisted), commit diffs, comments.

**Encryption:** AES-256 at rest, TLS 1.2+ in transit.

**Deletion:** Uninstall GitHub App → data deleted within 48 hours. Request immediate deletion: https://github.com/codeGROOVE-dev/support

## Privacy

**No third-party sharing** except:
- GitHub API (you authorize)
- Slack API (you authorize)
- Google Cloud Platform (infrastructure, DPA in place)

**No telemetry, tracking, or analytics.**

**Emails:** Slack integration hashes emails for GitHub ↔ Slack matching. Not stored plaintext.

**Cookies:** Session (24hr), CSRF token. No tracking cookies.

## Compliance

**GDPR:** Right to access, deletion, portability. Data controller: codeGROOVE, LLC. Data may be processed in US (GCP).

**CCPA:** Right to know, delete, opt-out of sale (we don't sell data).

**SOC 2:** Working towards Type II audit. Expected Q2 2025.

**HIPAA:** Not currently compliant. Don't use for PHI. Funk Master plan can discuss BAA.

DPA/BAA available for Funk Master plan: https://github.com/codeGROOVE-dev/support

## Infrastructure

**Hosting:** Google Cloud Platform (Cloud Run, Datastore)

**Network:** Private VPC, no public IPs for backend, Cloud Armor DDoS protection

**Access:** 2FA required, least-privilege IAM, audit logs

**Backups:** Encrypted, 30-day retention

## Incident Response

**Security vulnerability:** Open private advisory at https://github.com/codeGROOVE-dev/support/security

**Our response:**
- Acknowledgment: 24 hours
- Assessment: 48 hours
- Fix: Critical (24hr), High (3d), Medium (7d), Low (next release)
- Notification: Critical incidents reported within 24 hours

**Breach notification:** Affected users notified within 24 hours.

## Contact

Questions: https://github.com/codeGROOVE-dev/support

Security issues: https://github.com/codeGROOVE-dev/support/security (private advisory)

Last updated: November 2024
