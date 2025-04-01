#!/bin/bash

# 检查当前目录是否是 git 仓库
if [ ! -d .git ]; then
    echo "错误：当前目录不是 git 仓库"
    exit 1
fi

# 执行 git 命令
git add .
git commit -m "update"
git push

# 检查最后一个命令的执行状态
if [ $? -eq 0 ]; then
    echo "成功：代码已提交并推送"
else
    echo "错误：推送失败，请检查网络或 git 配置"
fi
