# jenkins-notes



	拷贝一份钥匙串（login.keychain-db）并把-db去掉
	钥匙串路径
  	~/Library/Keychains
  	
  	
  	Provisioning Profiles Directory Path:
  	/Users/用户名/Library/MobileDevice/Provisioning Profiles
  	
  	
关于Keychains and Provisioning Profiles Management无法upload和save的解决方案：

	先安装最新的稳定版：brew install jenkins-lts
	配置好所有可以操作的步骤
	
	手动下载旧版（2.263.4）进行配置
 

报错：
	
1、xcode-select: error: tool 'xcodebuild' requires Xcode, but active developer directory '/Library/Developer/CommandLineTools' is a command line tools instance

	解决：sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
