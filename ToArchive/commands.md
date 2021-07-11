
- A重命名为B：mv A B
- 脚本赋执行权限: chmod u+x xxx.sh  
		
		u代表所有者。+表示增加权限。x代表执行权限。
		
		或者直接使用sh运行（sh xxx.sh）这中情况下不需要赋值权限
- curl与wget
- 脚本执行方法：


		
		方法一：切换到shell脚本所在的目录
		./hello.sh
		
		方法二：以绝对路径的方式去执行
		~/Desktop/hello.sh
		
		方法三：直接使用bash 或sh 来执行(这种方式不需要赋值脚本执行权限)
		sh ~/Desktop/hello.sh
		
		方法四：使用source执行（这种方式会在当前shell中执行，前面三种都会开启一个子shell环境执行，执行完立即回到父shell）
		部分命令需要在当前shell环境中使用 例如：cd
		source hello.sh
		
		
		
traceroute www.baidu.com

netstat

netstat -nat|grep 80

lsof

lsof -i:80

kill 12094

killall Google