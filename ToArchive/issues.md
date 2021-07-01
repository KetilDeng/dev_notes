# fastlane

	加载插件报错：
	It seems like you wanted to load some plugins, however they couldn't be loaded Please follow the troubleshooting guide: https://docs.fastlane.tools/plugins/plugins-troubleshooting/
	
	检查Gemfile和Pluginfile:
	
	Gemfile默认：
	plugins_path = File.join(File.dirname(__FILE__), '.', 'Pluginfile')
	eval_gemfile(plugins_path) if File.exist?(plugins_path)
	
	如果Pluginfile在fastlane文件夹下 则改为：
	
	plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
	eval_gemfile(plugins_path) if File.exist?(plugins_path)
	
	
	
# zsh
[关于zsh启动时自动source ~/.zshrc](https://blog.csdn.net/Faiz5z/article/details/80986460)
	
	
	在~/.zprofile 添加 source ~/.zshrc
