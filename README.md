# 主题配置说明

## 目录结构

```
主题配置/
├── README.md                    # 本说明文件
├── switch-theme.sh              # 主题切换脚本
├── opencode/
│   ├── theme1-catppuccin-mocha.json    # 主题1: 深色主题
│   ├── theme2-architect-light.json     # 主题2: 暖色浅色主题
│   ├── theme3-ethereal-frost.json      # 主题3: 冷色浅色主题
│   └── theme4-deep-ocean.json          # 主题4: 深海科技深色主题
└── ghostty/
    ├── theme1/
    │   └── config               # 主题1: Catppuccin Mocha
    ├── theme2/
    │   └── config               # 主题2: Architect Light
    ├── theme3/
    │   └── config               # 主题3: Ethereal Frost
    └── theme4/
        └── config               # 主题4: Deep Ocean
```

## 主题说明

### Theme 1: Catppuccin Mocha (当前使用的深色主题)
- **OpenCode**: `catppuccin-mocha.json`
- **Ghostty**: `theme1/config`
- **特点**: 深紫色背景，粉紫色强调色，磨砂玻璃效果
- **适用**: 夜间使用，护眼模式

### Theme 2: Architect Light (截图中的浅色主题)
- **OpenCode**: `architect-light.json`
- **Ghostty**: `theme2/config`
- **特点**: 温暖的米色背景(#F5F2E9)，类似纸张质感，珊瑚色强调
- **配色**:
  - 背景: #F5F2E9 (温暖米白)
  - 主文字: #2D2D2D (深灰)
  - 箭头/强调: #D97A5E (珊瑚橙)
  - 路径: #5B6B8C (蓝灰)
  - Git分支: #9B7CB6 (紫粉)
- **适用**: 白天使用，阅读舒适

### Theme 3: Ethereal Frost (冷色浅色主题)
- **OpenCode**: `ethereal-frost.json`
- **Ghostty**: `theme3/config`
- **特点**: 冷灰白色背景(#F8F9FA)，青蓝色调，极简现代风格
- **配色**:
  - 背景: #F8F9FA (冷灰白)
  - 主文字: #2D3436 (深灰)
  - 关键字/箭头: #087F8C (青色)
  - 链接/函数: #2D5A7B (蓝灰)
  - 字符串: #2D6A4F (墨绿)
  - 注释: #868E96 (灰)
- **适用**: 白天使用，清爽现代风格

### Theme 4: Ocean Breeze (海洋清新浅色主题)
- **OpenCode**: `deep-ocean.json`
- **Ghostty**: `theme4/config`
- **特点**: 淡蓝白色背景(#F0F7FA)，海洋色调，清新自然风格
- **配色**:
  - 背景: #F0F7FA (淡蓝白)
  - 主文字: #1E3A5F (深海蓝)
  - 关键字/箭头: #0EA5E9 (天青)
  - 函数/链接: #2563EB (蓝色)
  - 字符串: #059669 (翠绿)
  - 注释: #6A8AAF (灰蓝)
- **适用**: 白天使用，海洋/清新风格

## 快速切换主题

### 方法一：使用切换脚本
```bash
# 切换到主题1 (深色)
./switch-theme.sh 1

# 切换到主题2 (暖色浅色)
./switch-theme.sh 2

# 切换到主题3 (冷色浅色)
./switch-theme.sh 3

# 切换到主题4 (海洋浅色)
./switch-theme.sh 4
```

### 方法二：手动切换

#### OpenCode
1. 编辑配置文件: `~/.opencode/settings.json`
2. 修改 theme 字段:
   ```json
   {
     "theme": "catppuccin-mocha"  // 主题1
     // 或
     "theme": "architect-light"   // 主题2
     // 或
     "theme": "ethereal-frost"    // 主题3
     // 或
     "theme": "deep-ocean"         // 主题4
   }
   ```
3. 重新加载 OpenCode: Command+Shift+P → reload

#### Ghostty
1. 复制对应主题配置:
   ```bash
   # 主题1
   cp "主题配置/ghostty/theme1/config" ~/.config/ghostty/config
   
   # 主题2
   cp "主题配置/ghostty/theme2/config" ~/.config/ghostty/config
   
    # 主题3
    cp "主题配置/ghostty/theme3/config" ~/.config/ghostty/config
    
    # 主题4
    cp "主题配置/ghostty/theme4/config" ~/.config/ghostty/config
    ```
2. 重启 Ghostty 或按 Command+Shift+, 重新加载配置

## 字体配置

本主题配置使用了以下字体，你可以根据需要选择安装：

### 推荐字体（可选）

**Maple Mono** - 编程字体
- 特点：支持连字(ligatures)、Nerd Font 图标、中文显示优化
- GitHub: https://github.com/subframe7536/maple-font/releases
- 下载后安装 MapleMono-NF-CN 版本以获得完整中文支持

**PingFang SC（苹方）** - 中文回退字体
- macOS 系统自带字体，无需额外安装
- Windows/Linux 用户可以使用系统默认中文字体作为替代

### 字体替代方案

如果不想安装 Maple Mono，Ghostty 会自动回退到系统默认等宽字体：
- macOS: SF Mono, Menlo
- Windows: Consolas, Cascadia Code
- Linux: Fira Code, JetBrains Mono

**修改字体配置：**
编辑对应的 Ghostty 配置文件，修改 `font-family` 为你喜欢的字体名称。

## 保存位置

- **OpenCode 主题**: `~/.opencode/themes/`
- **Ghostty 配置**: `~/.config/ghostty/config`
- **Ghostty 配置(备用)**: `~/Library/Application Support/com.mitchellh.ghostty/config`

## 提示

1. 两个工具的主题需要**分别切换**，OpenCode 改 settings.json，Ghostty 换 config 文件
2. 建议保持两个工具使用相同主题，保持视觉一致性
3. 可以随时修改 JSON 文件中的颜色值来自定义主题
