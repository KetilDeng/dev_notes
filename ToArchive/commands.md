
- A重命名为B

		mv A B

- 脚本赋执行权限
		
		chmod u+x xxx.sh 
		 
		u代表所有者。+表示增加权限。x代表执行权限。
		
		或者直接使用sh运行（sh xxx.sh）这中情况下不需要赋值权限

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
				

- 查看电池状态

		ioreg -rn AppleSmartBattery | grep -i capacity 
		

- 查看当前git配置

		 git config -l 
		 
- 遴选

		 git cherry-pick 	<commitid0> <commitid1>		 
- 查看环境变量

		echo $PATH 
	 
- 临时添加环境变量
		
		export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH" 
		
- 当前用户添加环境变量

		vim ~/.zshrc 
		 添加 export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"  
		 source  ~/.zshrc
		 
- 创建软连
	
		ln -s $source $target
		-s参数表明创建的链接类型，source表示程序所在位置，target表示软链接的所在路径。
		eg：ln -s /Users/kimimaro/.rbenv/versions/2.0.0-p645/bin/pod /usr/local/bin
		 
- 查看某个gem所在路径

		gem which cocoapods
		 
- curl与wget

- Linux命令

		路由追踪：
		traceroute www.baidu.com
		
		显示网络状态：
		netstat
		netstat -nat|grep 80
		
		端口查看：
		lsof
		lsof -i:80
		
		杀进程
		kill 12094
		killall Google
