# Getting Started

Get up and running in 5 minutes. Install the GitHub App, login to your dashboard, then optionally add Slack and desktop notifications.

## Prerequisites

- GitHub organization admin access (or personal account)
- (Optional) Slack workspace admin access

## Step 1: Install GitHub App (Required)

The GitHub App is required for real-time notifications and automated review assignments.

[Add to GitHub →](https://github.com/apps/ready-to-review-beta){ .md-button .md-button--primary }

Choose **All repositories** or select specific repos, then click **Install**.

## Step 2: Login to Your Dashboard

View all your PRs in one place. Enter your GitHub organization name below, or leave blank for personal account:

<div style="background: #f5f5f5; padding: 24px; border-radius: 8px; margin: 20px 0;">
  <div style="display: flex; gap: 12px; align-items: center; flex-wrap: wrap;">
    <input
      type="text"
      id="org-input"
      placeholder="your-org-name"
      style="flex: 1; min-width: 200px; padding: 12px 16px; border: 2px solid #0e7490; border-radius: 4px; font-size: 16px; font-family: inherit;"
      onkeypress="if(event.key === 'Enter') openDashboard()"
    />
    <button
      onclick="openDashboard()"
      class="md-button md-button--primary"
      style="white-space: nowrap; padding: 12px 24px; font-size: 16px; cursor: pointer; border: none;"
    >
      Open Dashboard →
    </button>
  </div>
  <p style="margin: 12px 0 0 0; font-size: 14px; color: #666;">
    <strong>Examples:</strong> <code>acme-corp</code> → acme-corp.ready-to-review.dev | Leave blank → dash.ready-to-review.dev
  </p>
</div>

<script>
function openDashboard() {
  const orgInput = document.getElementById('org-input');
  const org = orgInput.value.trim();

  if (org === '') {
    window.open('https://dash.ready-to-review.dev', '_blank');
  } else {
    // Remove any special characters and convert to lowercase
    const cleanOrg = org.toLowerCase().replace(/[^a-z0-9-]/g, '');
    window.open(`https://${cleanOrg}.ready-to-review.dev`, '_blank');
  }
}
</script>

Click **Login with GitHub** and authorize. Your PRs will appear within 60 seconds.

## Step 3: Slack Integration (Optional)

[Add to Slack →](https://slack.com/oauth/v2/authorize?client_id=9426269265270.9443955134789&scope=channels:history,channels:read,chat:write,chat:write.public,commands,im:write,reactions:write,team:read,users:read,users:read.email,groups:read,groups:history&user_scope=){ .md-button .md-button--primary }

After clicking the button above, select your workspace and click **Allow**.

By default, repositories automatically map to same-named Slack channels (`api-server` repo → `#api-server` channel). Need custom channel mapping or notification settings? See [Slack Integration - Configuration](slack.md#configuration) for advanced options including wildcards, notification timing, and multi-channel routing.

**Verify installation:**
- In any Slack channel, type `/r2r report` to test the integration
- Create a test PR and check for message in the corresponding channel (typical: 15-30 seconds, max: 60 seconds)

## Step 4: Desktop Notifications / Goose (Optional)

Desktop notifications. Build from source (Homebrew package coming soon).

=== "macOS"

    ```bash
    # Install dependencies
    brew install gh go

    # Test GitHub authentication
    gh auth status || gh auth login

    # Build and run
    git clone https://github.com/ready-to-review/goose.git
    cd goose && make run
    ```

    Click menu bar icon → **Start at Login** for auto-start.

=== "Linux"

    ```bash
    # Debian/Ubuntu
    sudo apt install golang-go gh

    # Fedora
    sudo dnf install golang gh

    # Arch Linux
    sudo pacman -S go github-cli

    # Test GitHub authentication
    gh auth login

    # Build and run
    git clone https://github.com/ready-to-review/goose.git
    cd goose && make run
    ```

=== "Windows"

    Install: [Go](https://go.dev/dl/), [GitHub CLI](https://cli.github.com/)

    ```powershell
    # Test GitHub authentication
    gh auth login

    # Build and run
    git clone https://github.com/ready-to-review/goose.git
    cd goose
    go build -o goose.exe ./cmd/goose
    .\goose.exe
    ```

=== "FreeBSD"

    ```bash
    # Install dependencies
    pkg install go gh git

    # Test GitHub authentication
    gh auth login

    # Build and run
    git clone https://github.com/ready-to-review/goose.git
    cd goose && make run
    ```

**Verify installation:** Menu bar/system tray icon appears. Create test PR, expect notification (typical: 15-30 seconds, max: 60 seconds).

## Problems?

[Get Support →](https://codegroove.dev/support){ .md-button }
