#!/bin/bash

# 主题切换脚本
# Usage: ./switch-theme.sh [1|2|3|4|5]
# 1 = Catppuccin Mocha (深色主题)
# 2 = Architect Light (暖色浅色主题)
# 3 = Ethereal Frost (冷色浅色主题)
# 4 = Ocean Breeze (海洋清新浅色主题)
# 5 = Soft Noir (柔和深色主题)

THEME=${1:-1}

# OpenCode 配置文件路径
OPENCODE_SETTINGS="$HOME/.opencode/settings.json"
OPENCODE_TUI="$HOME/.config/opencode/tui.json"

echo "正在切换主题到: Theme $THEME"

# 更新 OpenCode 配置文件的函数
update_opencode_theme() {
    local theme_name=$1
    local updated=false
    
    # 更新 tui.json（优先级更高）
    if [ -f "$OPENCODE_TUI" ]; then
        sed -i.bak "s/\"theme\": \"[^\"]*\"/\"theme\": \"$theme_name\"/" "$OPENCODE_TUI"
        rm -f "$OPENCODE_TUI.bak"
        echo "✓ OpenCode tui.json 已更新: $theme_name"
        updated=true
    fi
    
    # 更新 settings.json
    if [ -f "$OPENCODE_SETTINGS" ]; then
        sed -i.bak "s/\"theme\": \"[^\"]*\"/\"theme\": \"$theme_name\"/" "$OPENCODE_SETTINGS"
        rm -f "$OPENCODE_SETTINGS.bak"
        echo "✓ OpenCode settings.json 已更新: $theme_name"
        updated=true
    fi
    
    if [ "$updated" = false ]; then
        echo "⚠ 警告: 未找到 OpenCode 配置文件"
        echo "  请手动创建 ~/.config/opencode/tui.json 并添加: \"theme\": \"$theme_name\""
    fi
}

if [ "$THEME" == "1" ]; then
    echo "切换到 Theme 1: Catppuccin Mocha (深色)"
    
    # 更新 OpenCode 主题
    update_opencode_theme "catppuccin-mocha"
    
    # Ghostty - 复制主题1配置
    cp "$HOME/Library/Application Support/com.mitchellh.ghostty/config" "$HOME/.config/ghostty/config"
    echo "✓ Ghostty 配置已更新"
    
elif [ "$THEME" == "2" ]; then
    echo "切换到 Theme 2: Architect Light (暖色浅色主题)"
    
    update_opencode_theme "architect-light"
    
    cp "$HOME/.config/ghostty/config_theme2" "$HOME/.config/ghostty/config"
    echo "✓ Ghostty 配置已更新"
    
elif [ "$THEME" == "3" ]; then
    echo "切换到 Theme 3: Ethereal Frost (冷色浅色主题)"
    
    update_opencode_theme "ethereal-frost"
    
    cp "$HOME/.config/ghostty/config_theme3" "$HOME/.config/ghostty/config"
    echo "✓ Ghostty 配置已更新"
    
elif [ "$THEME" == "4" ]; then
    echo "切换到 Theme 4: Ocean Breeze (海洋清新浅色主题)"
    
    update_opencode_theme "deep-ocean"
    
    cp "$HOME/.config/ghostty/config_theme4" "$HOME/.config/ghostty/config"
    echo "✓ Ghostty 配置已更新"

elif [ "$THEME" == "5" ]; then
    echo "切换到 Theme 5: Soft Noir (柔和深色主题)"
    
    update_opencode_theme "soft-noir"
    
    cp "$(dirname "$0")/ghostty/theme5/config" "$HOME/.config/ghostty/config"
    echo "✓ Ghostty 配置已更新"
    
else
    echo "用法: ./switch-theme.sh [1|2|3|4|5]"
    echo "  1 = Catppuccin Mocha (深色主题)"
    echo "  2 = Architect Light (暖色浅色主题)"
    echo "  3 = Ethereal Frost (冷色浅色主题)"
    echo "  4 = Ocean Breeze (海洋清新浅色主题)"
    echo "  5 = Soft Noir (柔和深色主题)"
    exit 1
fi

echo ""
echo "✅ 主题切换完成！"
echo ""
echo "下一步："
echo "1. 重启 Ghostty 以应用新配置"
echo "2. 重新加载 OpenCode (Command+Shift+P → reload)"
