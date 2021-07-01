# ios工程化

统一开发环境：

	macOS（系统）
	↓
	rbenv（管理Ruby）	Xcode（IDE）
	↓
	Bundler、RubyGems（管理 CocoaPods 和 fastlane）
	↓
	CocoaPods	fastlane
	
[CocoaPods](https://cocoapods.org/)

[fastlane](https://docs.fastlane.tools/)
	
[rbenv](https://github.com/rbenv/rbenv)
	
	安装：
	brew install rbenv ruby-build rbenv-vars
	
	
	配置：
	~/.zshrc:
	export PATH="$HOME/.rbenv/bin:$PATH" 
	eval "$(rbenv init -)"
	
	安装和设置项目的 Ruby 环境
	$ cd $(PROJECT_DIR)
	$ rbenv install 2.7.1
	$ rbenv local 2.7.1
	
	常用命令：
	rbenv -v						# 查看rbenv版本
	rbenv install --list  			# 列出所有 ruby 版本
	rbenv install 2.7.1				# 安装 2.7.1 ruby
	rbenv versions               		# 列出安装的版本
	rbenv version               		# 列出正在使用的版本

[RubyGems](https://rubygems.org/?locale=zh-CN) 

[Bundler](https://bundler.io/)

	安装Bundler：
	gem install bundler
	
	生成Gemfile：
	bundle init 
	
	Gemfile文件添加依赖包：
	source "https://rubygems.org"
	gem "cocoapods", "1.10.0"
	gem "fastlane", "2.166.0"
	
	
脚本操作 $ ./scripts/setup.sh

该脚本主要做了四件事情，第一步是在 rbenv 下安装特定版本的 Ruby 开发环境，然后通过 RubyGems 安装 Bunlder，接着使用 Bundler 安装 CocoaPods 和 fastlane 等依赖包，最后安装各个 Pod。这样，一个统一的项目环境就搭建完成了，接下来开发者就可以打开 xxx.xcworkspace进行开发了。

	# Install ruby using rbenv

	ruby_version=`cat .ruby-version`

	if [[ ! -d "$HOME/.rbenv/versions/$ruby_version" ]]; then

  	rbenv install $ruby_version;

	fi

	# Install bunlder

	gem install bundler

	# Install all gems

	bundle install

	# Install all pods

	bundle exec pod install


