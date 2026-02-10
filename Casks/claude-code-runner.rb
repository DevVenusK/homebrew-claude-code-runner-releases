cask "claude-code-runner" do
  version "1.0.1"
  sha256 "93629029122e967db3b741ff2f8b33b6e520d03c68a87aaeffed193cdbff3b60"

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
