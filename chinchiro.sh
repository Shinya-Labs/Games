#!/bin/bash

echo "=== チンチロリン ==="

# サイコロを3つ振る
dice1=$((RANDOM % 6 + 1))
dice2=$((RANDOM % 6 + 1))
dice3=$((RANDOM % 6 + 1))

echo "出目: $dice1, $dice2, $dice3"

# 判定ロジック
if [[ $dice1 -eq $dice2 && $dice2 -eq $dice3 ]]; then
    echo "ゾロ目！勝ち！"
elif [[ $dice1 -eq $dice2 ]]; then
    echo "目は $dice3、役あり！"
elif [[ $dice1 -eq $dice3 ]]; then
    echo "目は $dice2、役あり！"
elif [[ $dice2 -eq $dice3 ]]; then
    echo "目は $dice1、役あり！"
elif [[ $(echo "$dice1$dice2$dice3" | grep -E '123|234|345|456') ]]; then
    echo "順目！勝ち！"
else
    echo "役なし…負け！"
fi
