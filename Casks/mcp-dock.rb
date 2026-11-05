# frozen_string_literal: true

# MCP Dock - https://mcp.folay.top
cask "mcp-dock" do
  arch arm: "-arm64", intel: ""

  version "1.4.1"
  sha256 arm:   "8b3a367fa9713793726e7783f1fee3e12a2187ca03b40773d87140e04bd7cbe9",
         intel: "0cbe931fc48429254bd281f2c012e97a5857fe9493d5a0842f02e6d71635713f"

  url "https://github.com/folay-git/mcp-dock/releases/download/v#{version}/MCP.Dock-#{version}#{arch}.dmg"
  name "MCP Dock"
  desc "Manage MCP servers, Skills and Rules for AI coding clients"
  homepage "https://mcp.folay.top"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MCP Dock.app"

  uninstall quit: "com.mcp-dock.app"

  zap trash: [
    "~/.mcp-dock",
    "~/Library/Application Support/mcp-dock",
    "~/Library/Caches/com.mcp-dock.app",
    "~/Library/Preferences/com.mcp-dock.app.plist",
    "~/Library/Saved Application State/com.mcp-dock.app.savedState",
    "~/Library/Logs/mcp-dock",
  ]
end
