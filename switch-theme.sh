#!/bin/bash

# 主题切换脚本
# Usage: ./switch-theme.sh [1|2|3|4]
# 1 = Catppuccin Mocha (深色主题)
# 2 = Architect Light (暖色浅色主题)
# 3 = Ethereal Frost (冷色浅色主题)
# 4 = Ocean Breeze (海洋清新浅色主题)

THEME=${1:-1}

echo "正在切换主题到: Theme $THEME"

if [ "$THEME" == "1" ]; then
    echo "切换到 Theme 1: Catppuccin Mocha (深色)"
    
    # OpenCode - 修改 settings.json 中的主题引用
    # 注意：OpenCode 需要在 settings.json 中设置 "theme": "catppuccin-mocha"
    echo "OpenCode 主题: catppuccin-mocha"
    echo "请在 ~/.opencode/settings.json 中设置: \"theme\": \"catppuccin-mocha\""
    
    # Ghostty - 复制主题1配置
    cp "$HOME/Library/Application Support/com.mitchellh.ghostty/config" "$HOME/.config/ghostty/config"
    echo "Ghostty 配置已更新"
    
elif [ "$THEME" == "2" ]; then
    echo "切换到 Theme 2: Architect Light (暖色浅色主题)"
    
    echo "OpenCode 主题: architect-light"
    echo "请在 ~/.opencode/settings.json 中设置: \"theme\": \"architect-light\""
    
    cp "$HOME/.config/ghostty/config_theme2" "$HOME/.config/ghostty/config"
    echo "Ghostty 配置已更新"
    
elif [ "$THEME" == "3" ]; then
    echo "切换到 Theme 3: Ethereal Frost (冷色浅色主题)"
    
    echo "OpenCode 主题: ethereal-frost"
    echo "请在 ~/.opencode/settings.json 中设置: \"theme\": \"ethereal-frost\""
    
    cp "$HOME/.config/ghostty/config_theme3" "$HOME/.config/ghostty/config"
    echo "Ghostty 配置已更新"
    
elif [ "$THEME" == "4" ]; then
    echo "切换到 Theme 4: Ocean Breeze (海洋清新浅色主题)"
    
    echo "OpenCode 主题: deep-ocean"
    echo "请在 ~/.opencode/settings.json 中设置: \"theme\": \"deep-ocean\""
    
    cp "$HOME/.config/ghostty/config_theme4" "$HOME/.config/ghostty/config"
    echo "Ghostty 配置已更新"
    
else
    echo "用法: ./switch-theme.sh [1|2|3|4]"
    echo "  1 = Catppuccin Mocha (深色主题)"
    echo "  2 = Architect Light (暖色浅色主题)"
    echo "  3 = Ethereal Frost (冷色浅色主题)"
    echo "  4 = Ocean Breeze (海洋清新浅色主题)"
    exit 1
fi

echo ""
echo "主题切换完成！"
echo ""
echo "下一步："
echo "1. 更新 OpenCode settings.json 中的 theme 字段"
echo "2. 重启 Ghostty 以应用新配置"
echo "3. 重新加载 OpenCode (Command+Shift+P → reload)"
