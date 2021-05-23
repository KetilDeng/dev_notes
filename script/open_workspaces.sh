#! /bin/sh

# 项目1
test1="/Users/testuser/Desktop/test1.xcworkspace"
# 项目2
test2="/Users/testuser/Desktop/test2.xcworkspace"
# 项目3
test3="/Users/testuser/Desktop/test3.xcworkspace"

# 项目数组
projects=(
${test1}
${test1}
${test1}
)

# 项目名数组
projectNames=(
"0 项目1 \n"
"1 项目2 \n"
"2 项目3 \n"
)

echo "\n 可打开的项目 \n ${projectNames[*]}"

read -p "输入项目编号:" index 

open ${projects[${index}]}
