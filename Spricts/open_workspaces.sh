#! /bin/sh

# 印月
yy="/Users/testuser/Desktop/印月/01-50-k-saas-iccp-yy-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# E管佳
egj="/Users/testuser/Desktop/E管佳/01-60-k-cloud-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# K生活
klife="/Users/testuser/Desktop/K生活/01-01-k-life30-ios/src/app-ios/JZYSmartCommunityOwner.xcworkspace"
# 佳广
jg="/Users/testuser/Desktop/佳广/01-61-peking-hotel-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# 邢台
xt="/Users/testuser/Desktop/邢台/01-50-k-saas-iccp-xt-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# 超级APP
super="/Users/testuser/Desktop/超级/01-50-k-saas-iccp-gjly-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# K服务
kservice="/Users/testuser/Desktop/K服务/01-02-k-service30-ios/src/app-ios/iOSTpl.xcworkspace"
# 臻众
zz="/Users/testuser/Desktop/臻众/01-50-k-saas-iccp-zz-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# 佳寓Member
jym="/Users/testuser/Desktop/智慧公寓/03-03-wewa40-ios/Member/src/app-ios/kaisaLive.xcworkspace"
# 佳寓butler
jyb="/Users/testuser/Desktop/智慧公寓/03-03-wewa40-ios/butler/src/app-ios/WeWaButler.xcworkspace"
# 六盘水
lps="/Users/testuser/Desktop/六盘水/01-50-k-saas-iccp-lps-ios20/src/app-ios/huachenghuiOwner.xcworkspace"
# 华城荟业主端
hchiccp="/Users/testuser/Desktop/华城荟/01-50-k-saas-iccp-hq-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# 华城荟物业端
hchicbp="/Users/testuser/Desktop/华城荟/01-50-k-saas-icbp-hq-ios/src/app-ios/iOSTpl.xcworkspace"
# 地产设计
design="/Users/testuser/Desktop/地产设计/03-04-01-design20-ios/src/app-ios/huachenghuiOwner.xcworkspace"
# 大会员
big="/Users/testuser/Desktop/大会员/02-01-big-member-ios/src/app-ios/BigMember.xcworkspace"
# 嘉美轩
jmx="/Users/testuser/Desktop/大会员/02-01-camilla-ios/src/app-ios/BigMember.xcworkspace"


# 项目数组
projects=(
${yy}
${egj}
${klife}
${jg}
${xt}
${super}
${kservice}
${zz}
${jym}
${jyb}
${lps}
${hchiccp}
${hchicbp}
${design}
${big}
${jmx}
)

# 项目名数组
projectNames=(
"0 印月-AI佳 \n"
"1 E管佳 \n"
"2 K生活 \n"
"3 佳广运营 \n"
"4 邢台-万祥家 \n"
"5 超级APP \n"
"6 K服务 \n"
"7 臻众-小邻社区 \n"
"8 佳寓 \n"
"9 佳寓管家 \n"
"10 六盘水 \n"
"11 华城荟业主端 \n"
"12 华城荟物业端 \n"
"13 地产设计 \n"
"14 大会员 \n"
"15 嘉美轩 \n"
)

echo "\n 可打开的项目 \n ${projectNames[*]}"

read -p "输入项目编号:" index 

open ${projects[${index}]}
