# frozen_string_literal: true

# MCP Dock - https://mcp.folay.top
cask "mcp-dock" do
  arch arm: "-arm64", intel: ""

  version "1.4.2"
  sha256 arm:   "fe4ec5d3160595b43278c1085257f3e91328767ce4925b8d2fe5f0e5dc100d01",
         intel: "db5b186f12c9ecf61d11ca62c5657382faa9c854bace342a3e1d033d946a5578"

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
