#!/bin/bash

echo ""
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║           Architect Light Theme - 颜色展示                   ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""

# 定义颜色
reset="\033[0m"

# 背景色
echo "【背景色系】"
printf "\033[48;2;245;242;233m  base #F5F2E9     \033[0m  "
printf "\033[48;2;232;228;217m  mantle #E8E4D9   \033[0m  "
printf "\033[48;2;221;216;204m  crust #DDD8CC    \033[0m\n"
printf "\033[48;2;229;225;213m  surface0 #E5E1D5 \033[0m  "
printf "\033[48;2;216;212;200m  surface1 #D8D4C8 \033[0m  "
printf "\033[48;2;200;196;184m  surface2 #C8C4B8 \033[0m\n"
echo ""

# 文字色
echo "【文字色系】"
printf "\033[38;2;45;45;45m⬤ text #2D2D2D\033[0m     "
printf "\033[38;2;74;74;74m⬤ subtext1 #4A4A4A\033[0m  "
printf "\033[38;2;107;107;107m⬤ subtext0 #6B6B6B\033[0m\n"
printf "\033[38;2;138;138;138m⬤ overlay2 #8A8A8A\033[0m "
printf "\033[38;2;160;160;160m⬤ overlay1 #A0A0A0\033[0m "
printf "\033[38;2;184;184;184m⬤ overlay0 #B8B8B8\033[0m\n"
echo ""

# 强调色
echo "【强调色系】"
printf "\033[38;2;217;122;94m⬤ coral #D97A5E\033[0m    "
printf "\033[38;2;232;165;165m⬤ rose #E8A5A5\033[0m      "
printf "\033[38;2;155;124;182m⬤ mauve #9B7CB6\033[0m\n"
printf "\033[38;2;91;107;140m⬤ blue #5B6B8C\033[0m     "
printf "\033[38;2;74;90;122m⬤ sapphire #4A5A7A\033[0m  "
printf "\033[38;2;122;154;184m⬤ sky #7A9AB8\033[0m\n"
printf "\033[38;2;90;154;138m⬤ teal #5A9A8A\033[0m     "
printf "\033[38;2;122;155;106m⬤ green #7A9B6A\033[0m     "
printf "\033[38;2;168;155;200m⬤ lavender #A89BC8\033[0m\n"
echo ""

# 功能色
echo "【功能色系】（已调整为深色以便阅读）"
printf "\033[38;2;139;111;78m⬤ yellow #8B6F4E\033[0m   "
printf "\033[38;2;184;122;90m⬤ peach #B87A5A\033[0m     "
printf "\033[38;2;139;90;90m⬤ maroon #8B5A5A\033[0m\n"
printf "\033[38;2;196;90;90m⬤ red #C45A5A\033[0m       "
echo ""

echo "【带背景的示例文字】"
printf "\033[48;2;245;242;233;38;2;45;45;45m  base背景 + text文字  \033[0m  "
printf "\033[48;2;245;242;233;38;2;217;122;94m  base背景 + coral文字  \033[0m\n"
printf "\033[48;2;245;242;233;38;2;91;107;140m  base背景 + blue文字   \033[0m  "
printf "\033[48;2;245;242;233;38;2;139;111;78m  base背景 + yellow文字 \033[0m\n"
echo ""

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║  在 Ghostty 中按 Command+Shift+, 重新加载配置               ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
