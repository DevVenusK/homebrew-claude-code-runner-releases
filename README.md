# Claude Code Runner

Mac menu bar app that monitors your [Claude Code](https://docs.anthropic.com/en/docs/claude-code) sessions in real time.

The menu bar icon shows a terminal with scrolling green code lines when Claude is working, so you always know at a glance whether Claude is thinking or waiting for input.

## Status Indicators

| Icon State | Meaning |
|---|---|
| Terminal with scrolling code | **Working** - Claude is processing (API call or tool execution) |
| Black terminal (solid) | **Idle** - Claude is waiting for your input |
| Dimmed terminal | **Inactive** - No active sessions |

## Installation

### Homebrew (Recommended)

```bash
brew tap DevVenusK/claude-code-runner-releases
brew install --cask claude-code-runner
```

### Manual Download

1. Download the latest `ClaudeCodeRunner-x.x.x.dmg` from [Releases](https://github.com/DevVenusK/claude-code-runner-releases/releases)
2. Open the DMG
3. Drag `ClaudeCodeRunner.app` to `/Applications`
4. Launch from Applications or Spotlight

> The app is signed and notarized by Apple, so it will run without Gatekeeper warnings.

## Setup

### 1. Launch the App

After launching, Claude Code Runner appears as a terminal icon in your menu bar (top-right of screen). It does not appear in the Dock.

### 2. Install Hooks

Claude Code Runner uses [Claude Code hooks](https://docs.anthropic.com/en/docs/claude-code/hooks) to receive session events.

- Click the menu bar icon
- Click **Settings...**
- In the **Hook Configuration** section, click **Install Hooks**

This automatically adds the required hooks to `~/.claude/settings.json`. No manual configuration needed.

### 3. Start Using Claude Code

Open any terminal and start a Claude Code session. The menu bar icon will update automatically:

- **Session starts** -> icon becomes active (idle state)
- **You send a prompt** -> icon shows scrolling code animation (working state)
- **Claude responds** -> icon returns to idle
- **Session ends** -> icon returns to inactive

## Usage

### Menu Bar

Click the menu bar icon to see:

- **Overall status** (Working / Idle / Inactive)
- **Active sessions** with individual status indicators
- **Monitoring toggle** to pause/resume monitoring
- **Settings** to configure hooks
- **Quit** to exit the app

### Multiple Sessions

Claude Code Runner tracks all active Claude Code sessions simultaneously. Each session is listed with its own status indicator and session ID.

## Uninstall

### Homebrew

```bash
brew uninstall --cask claude-code-runner
```

### Manual

1. Quit the app (click menu bar icon -> Quit)
2. Delete `ClaudeCodeRunner.app` from `/Applications`
3. (Optional) Remove hooks: delete `claude-code-runner` entries from `~/.claude/settings.json`
4. (Optional) Remove status files: `rm -rf ~/.claude-code-runner`

## Requirements

- macOS 14.0 (Sonoma) or later
- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) installed

## License

MIT
