# Homebrew Tap

MCP Dock 的 Homebrew Tap。

## 安装

```bash
brew install --cask OldJii/tap/mcp-dock
```

Cask 同时支持 Apple Silicon 与 Intel：下载 GitHub Release 里的 DMG，并按该安装包真实的 SHA-256 校验。版本与校验值由发布流程在 Release 公开之后自动生成。

## 首次打开

macOS 构建使用 ad-hoc 签名，**未经 Apple 公证**。Cask 安装的是同一个安装包，首次打开时 macOS 可能拦截；请按官网的[安装指南](https://mcp.folay.top/guides/install)放行，不要通过移除隔离属性（`xattr`）等方式绕过系统检查。

安装方式以官网 <https://mcp.folay.top> 的说明为准；请不要使用来源不明的 MCP Dock 安装包。
