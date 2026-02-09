cask "claude-code-runner" do
  version "1.0.0"
  sha256 :no_check # Updated on each release

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
