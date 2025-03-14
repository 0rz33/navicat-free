#!/bin/bash

# 1. 关闭 Navicat Premium
echo "正在关闭 Navicat Premium..."
osascript -e 'tell application "Navicat Premium" to quit'

# 2. 等待进程完全退出
sleep 2  # 等待 2 秒，确保进程完全关闭

# 3. 确保 Navicat 进程已退出
while pgrep -x "Navicat Premium" > /dev/null; do
    echo "等待 Navicat Premium 退出..."
    sleep 1
done

echo "Navicat Premium 已关闭，开始清理..."

# 4. 删除 Navicat 配置文件
rm -rf ~/Library/Preferences/com.navicat.NavicatPremium.plist

# 5. 定义正则表达式，匹配隐藏加密文件
regex="\.([0-9A-Z]{32})"

# 6. 查找并删除匹配的隐藏文件
if [[ $(ls -a ~/Library/Application\ Support/PremiumSoft\ CyberTech/Navicat\ CC/Navicat\ Premium/ | grep '^\.') =~ $regex ]]; then
    hash=${BASH_REMATCH[1]}
    if [ ! -z "$hash" ]; then
        rm ~/Library/Application\ Support/PremiumSoft\ CyberTech/Navicat\ CC/Navicat\ Premium/.$hash
        echo "已删除隐藏文件: .$hash"
    fi
fi

echo "清理完成！"
