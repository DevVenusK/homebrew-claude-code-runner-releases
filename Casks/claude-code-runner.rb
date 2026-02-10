cask "claude-code-runner" do
  version "1.0.2"
  sha256 "c8fffe18e35050c8f9d1fe74f8610c9db3e87d383cbb754a398dca62db9f775c"

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
