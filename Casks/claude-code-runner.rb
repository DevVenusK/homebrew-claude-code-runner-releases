cask "claude-code-runner" do
  version "1.0.2"
  sha256 "d9420945c582d08a02ea3ba83eed18c446a5876b6ff4c759e6f52361f1a77334"

  url "https://github.com/DevVenusK/homebrew-claude-code-runner-releases/releases/download/v#{version}/ClaudeCodeRunner-#{version}.dmg"
  name "Claude Code Runner"
  desc "Mac menu bar app that monitors Claude Code sessions in real time"
  homepage "https://github.com/DevVenusK/homebrew-claude-code-runner-releases"

  depends_on macos: ">= :sonoma"

  app "ClaudeCodeRunner.app"

  zap trash: [
    "~/Library/Caches/com.devvenusk.claude-code-runner",
    "~/Library/Preferences/com.devvenusk.claude-code-runner.plist",
  ]
end
