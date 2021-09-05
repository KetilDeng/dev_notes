# interview for 2021/08

## 逻辑
1. A、B、C、D四个人分别带着一顶帽子。共两顶黑帽子，两顶白帽子。其中D和A、B、C三个隔了一堵不透明的墙。A可以看到B、C帽子的颜色。B可以看到C帽子的颜色。只要能判断自己的帽子颜色，就可以立刻说出来。他们四人沉默了几分钟，这时候一个人说到，他知道自己帽子的颜色是什么了，请问这个人是谁？
2. 老王卖鞋，一双进价30元，老王赔本卖，只卖20元。有个骗子来买，给老王50元假钞。老王未能识别，又没有零钱，把这假钞拿到隔壁铺子的老李换了50元零钱，回来找了骗子30。隔壁很快发现问题，拿假钞来换，老王只好把自己的家底真钞50元换给隔壁。问老王损失了多少钱？
3. 25匹马，5条跑道。要选出最快的前三名，最少要跑几次？(知乎面试题)
4. 有23枚硬币在桌上,10枚正面朝上。蒙住你的眼睛（你无法分清正反）,如何分成两组，让两组硬币正面朝上的一样多?（雅虎面试题）
5. 有三个杯子，容量各是10升、7升、3升。把10升的装满水。问：不用别的测量，怎样能将 10 升水分成两个 5 升。


## 算法
1. LRU算法是否了解，如何实现一套LRU算法？
2. 如果有1000万个Int类型的数字，如何对他们排序？
3. 如何遍历二叉树？
4. 简述下快速排序的过程，时间复杂度是多少？
5. 有一个整数数组，如何只遍历一遍就实现让该数组奇数都在前面，偶数都在后面？
6. 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？(leetcode 20)
7. 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。（leetcode 7）
8. 有红、黄、蓝三种颜色的气球。在牛客王国，1个红气球+1个黄气球+1个蓝气球可以兑换一张彩票。（牛客网）
9. 如何判断一个链表是否是双向列表。
10. 搜索旋转树相关的问题。
11. 数组的排序问题。
12. 给定一个字符串，请你找出其中不含有重复字符的最长子串的长度。
13. 给你一个二叉树，请你返回其按层序遍历得到的节点值。
14. 给定一个二叉树，找出其最大深度。
15. 两个栈 实现一个队列
16. 红黑树了解吗


## 网络
1. 简述https加密过程。
2. 简述tcp三次握手、四次挥手。为什么握手是三次，而挥手需要四次。
3. 分别说一下tcp 和 udp 以及他们的区别和联系。
4. http的超时默认从什么位置开始计算。
5. http使用udp还是tcp链接以及每次发送一个http请求 就一定建立tcp链接吗？ 为什么？
6. tcp建立了几个通道 ，分别是什么 ，发送端和接收端是同一个通道吗？
7. TCP 流量控制

## 操作系统

## 设计模式
1. 怎么理解面向协议编程？
2. 面向对象的特征
3. 知道哪些设计模式，怎么理解设计模式的作用？
4. MVVM和MVC有什么区别？
5. 你对响应式编程的理解
6. KVO 、 Notification 、 delegate 各自的优缺点，效率还有使用场景


## iOS
#### [iOS 底层原理+逆向 文章汇总](https://juejin.cn/post/6949574423837933575)
##### Swift
<details>
<summary>Swift中struct和class有什么区别？</summary>
	
	struct是值类型，class是引用类型
	struct存储在stack中，class存储在heap中
	struct更轻量，更快
	使用struct不需要考虑内存泄漏和多线程读写的问题，因为在传递值的时候它会进行值的copy
	
	相同点：
	都能定义property、method、initializers
	都支持protocol、extension
	
	不同点：
	class是引用类型；struct是值类型
	class支持继承；struct不支持继承
	class声明的方法修改属性不需要mutating关键字；struct需要
	struct都有一个自动生成的成员构造器，而class需要自己生成。
	class支持反初始化器（Deinitializers）；struct不支持
	class支持引用计数(Reference counting)；struct不支持
	class支持类型转换(Type casting)(类型转换可以判断实例的类型，也可以将实例看做是其父类或者子类的实例。)；struct不支持
</details>

<details>
<summary>在项目中如何选择Struct和Class</summary>
	
	默认使用struct
	当需要继承Objective-C某些类的的时候使用class
	当需要控制唯一性时使用class
</details>

<details>
<summary> Any、AnyObject、AnyClass </summary>
	
	Any: 可以表示任意类型，甚至方法类型（func）
	AnyObject: 表示任何class类型的实例对象（类似OC中的id类型）
	AnyClass：表示任意类的元类型.任意类的类型都隐式遵守这个协议.  AnyObject.Type中的.Type就是获取元类型, 辟如你有一个Student类, Student.Type就是获取Student的元类型.
</details>

<details>
<summary> Swift中的方法调用有哪些形式？ </summary>
	[深入理解 Swift 派发机制](https://kemchenj.github.io/2017-01-09/)
	
	直接派发、函数表派发、消息机制派发。
	派发方式受声明位置、引用类型、特定行为的影响。
	
	值类型总是会使用直接派发, 简单易懂
	而协议和类的 extension 都会使用直接派发
	NSObject 的 extension 会使用消息机制进行派发
	NSObject 声明作用域里的函数都会使用函数表进行派发.
	协议里声明的, 并且带有默认实现的函数会使用函数表进行派发
</details>

<details>
<summary> Swift和OC有什么区别？ </summary>
	
	 				         | Swift			           | OC                                  |
--------------------|------------------|-----------------------|
语言特性				 | 静态(更安全)	         | 动态                                   |
语法				       | 精简				  | 冗长                                   |
命名空间                        | 有                            | 无                                      |
方法调用                        | 直接派发、函数表派发、消息机制派发 | 消息机制派发    |
泛型/元组/高阶函数         | 有                             | 无                                        |
语言效率			       | 性能高、速度快         | 略低                                   |
文件特性			       | .swift单文件              | .h/.m包含头文件                 |
编程特性			       | 偏函数式编程            | 面向对象编程                         |
</details>

<details>
<summary> Swift的安全性体现在哪里？（为什么说Swift是安全的？） </summary>
	
	可选类型Optional。携带着变量可能为空的信息，这就强制开发者去考虑可能为空的情况
	泛型。泛型在确保了类型安全的同时，又保有灵活性。类型安全可以在编译时检查出更多的问题，而灵活性意味着更好的代码重用。
	数组、字典、集合、字符串等常用类型都属于结构体，大大保证了多线程安全
	内存安全。默认情况下，Swift 会阻止你代码里不安全的行为。例如，Swift 会保证变量在使用之前就完成初始化，在内存被回收之后就无法被访问，并且数组的索引会做越界检查。
</details>

<details>
<summary> 说一下写时复制 </summary>
	
	Copy-On-Write。只有当这个值需要改变时才进行复制行为。
</details>

<details>
<summary> swift的面向协议的理解 </summary>
	[面向协议编程与 Cocoa 的邂逅](https://onevcat.com/2016/11/pop-cocoa-1/)
	
	OOP面临的问题：
	1、动态派发安全性
	2、横切关注点
	3、菱形缺陷
	
	POP可解决前两个问题
</details>

<details>
<summary> swift中的可变数组 为啥用var来修饰 </summary>
	xxx
</details>

<details>
<summary> ===、==</summary>

	=== 判断两个变量或者常量的引用是否相同
	== 判断两个变量或者常量的值是否相同
	如果想让自定义的class支持==操作符，可以使该类遵守Equatable
	class Animal {
    		var name: String?
    		var weight = 0.0
    }
	extension Animal: Equatable {
    		static func == (lhs: Animal, rhs: Animal) -> Bool {
       		 return lhs.name == rhs.name && lhs.weight == rhs.weight
       		 }
       }
</details>


##### 语法
<details>
<summary> Block是如何实现的？Block对应的数据结构是什么样子的？__block的作用是什么？它对应的数据结构又是什么样子的？ </summary>

		xxx
</details>

<details>
<summary> GCD中的Block是在堆上还是栈上？ </summary>

	堆上。可以通过block的isa指针确认。
</details>

<details>
<summary> NSCoding协议是干什么用的？ </summary>

	一种编码协议，归档时和解档时需要依赖该协议定义的编码和解码方法。Foundation和Cocoa Touch中的大部分类都遵循了这个协议，一般被NSKeyedArchiver做自定义对象持久化时使用。
</details>

<details>
<summary> KVO的实现原理，如何手动触发kvo </summary>

	当一个对象使用了KVO监听，iOS系统会修改这个对象的isa指针，改为指向一个全新的通过Runtime动态创建的子类，子类拥有自己的set方法实现，set方法实现内部会顺序调用willChangeValueForKey方法、原来的setter方法实现、didChangeValueForKey方法，而didChangeValueForKey方法内部又会调用监听器的observeValueForKeyPath:ofObject:change:context:监听方法。
		
	手动调用willChangeValueForKey：和 didChangevlueForKey：
</details>

<details>
<summary> KVO能监听成员变量吗？KVO能监听Array的count属性吗? </summary>

	赋值操作遵循kvc：
	监听成员变量变化 。[person setValue:@"ketil" forKey:@"_name"];
	监听数组count变化。[[self mutableArrayValueForKey:@"array"] addObject:@"ffff"];
</details>

<details>
<summary> 谈谈你对KVC的理解 </summary>

	KVC也尽可能先尝试使用存取方法访问属性。当使用KVC访问属性时，它内部其实做了很多事：
	1.首先查找有无<property>，set<property>，is<property>等property属性对应的存取方法，若有，则直接使用这些方法;
	2.若无，则继续查找_<property>，_get<property>，set<property>等方法，若有就使用；
	3.若查询不到以上任何存取方法，则尝试直接访问实例变量<property>，<property>；
	4.若连该成员变量也访问不到，则会在下面方法中抛出异常。之所以提供这两个方法，就是让你在因访问不到该属性而程序即将崩掉前，供你重写，在内做些处理，防止程序直接崩掉。
> 	valueForUndefinedKey:和setValue:forUndefinedKey:方法。

</details>

<details>
<summary> iOS的系统通知怎么实现的？NSNotificaiton是同步还是异步的，如果发通知时在子线程，接收在哪个线程？ </summary>

	同步。子线程。
</details>

##### UI
<details>
<summary>事件响应链是如何传递的？（事件传递、事件响应）（注意：手势的有优先级问题还有同时如何阻断事件传递） </summary>
	[iOS 事件(UITouch、UIControl、UIGestureRecognizer)传递机制](http://www.cocoachina.com/articles/26383)

    事件传递：从UIApplication开始，到window，再逐步往下层（子视图）找，直到找到最深层的子视图，其为first responder。用到的判断方法是pointInside:withEvent和hitTest:withEvent。
    事件响应：从识别到的视图（first responder）开始验证能否响应事件，如果不能就交给其上层（父视图）视图，如果能相应将不再往下传递，如果直到找到UIApplication层还没有相应，那就忽略该次点击。用到的判断方法是touchesBegan:withEvent、touchesMoved:withEvent等。这两个过程大致的相反的。
</details>


<details>
<summary> 什么是异步渲染？ </summary>

        xxx
</details>

<details>
<summary> layoutsubviews是在什么时机调用的？ </summary>

        xxx
</details>

<details>
<summary> 一张图片的展示经历了哪些步骤？ </summary>

        xxx
</details>

<details>
<summary> 什么是离屏渲染，什么情况会导致离屏渲染？ </summary>

        xxx
</details>

<details>
<summary> 什么是离屏渲染，什么情况会导致离屏渲染？ </summary>

        xxx
</details>

##### 内存
<details>
<summary> ARC方案的原理是什么？它是在什么时候做的隐式添加release操作？ </summary>

        xxx
</details>

<details>
<summary> 什么是野指针，什么情况下会出现 </summary>
	[iOS 野指针处理](https://juejin.cn/post/6930979515552235528)
        
        当所指向的对象被释放或者收回，但是对该指针没有作任何的修改，以至于该指针仍旧指向已经回收的内存地址，此情况下该指针便称迷途指针(即通常说的野指针)。
        
            // ARC环境下：
   		 __unsafe_unretained UIView *testObj1 = [[UIView alloc] init];
           // testObj1 指向的内存区域已释放，本身未做任何修改，已成为野指针，向其发消息会闪退。

          __weak UIView *testObj2 = [[UIView alloc] init];
         // testObj2 指向的内存区域已释放，但本身被置为nil，不会成为野指针。
         
         
         @property (nonatomic, weak) UIView*                 weakView;
		@property (nonatomic, unsafe_unretained) UIView*    unSafeView;
		@property (nonatomic, assign) UIView*               assignView;

             // ARC下weak对象释放后会自动置nil，因此下面的代码不会崩溃
    [self.view addSubview:self.weakView];
    // 野指针场景一：unsafe_unretained修饰的对象释放后，不会自动置nil，变成野指针，因此下面的代码会崩溃
    [self.view addSubview:self.unSafeView];
    // 野指针场景二：应该使用strong/weak修饰的对象，却错误的使用assign修饰，释放后不会自动置nil
    [self.view addSubview:self.assignView];
    // 野指针场景三：给类添加添加关联变量的时候，类似场景二，应该使用OBJC_ASSOCIATION_RETAIN_NONATOMIC修饰，却错误使用OBJC_ASSOCIATION_ASSIGN
    [self.view addSubview:self.associateView];
    
</details>

<details>
<summary> 为什么当我们在使用block时外面是weak 声明一个weakSelf，还要在block内部使用strong再持有一下？ </summary>

        xxx
</details>

<details>
<summary>  Autoreleasepool是实现机制是什么？它是什么时候释放内部的对象的？它内部的数据结构是什么样的？当我提到哨兵对象时，会继续问哨兵对象的作用是什么，为什么要设计它？ </summary>

        x
</details>

<details>
<summary> 哪些对象会放入到Autoreleasepool中？ </summary>

        xxx
</details>

<details>
<summary> Autoreleasepool所使用的数据结构是什么？AutoreleasePoolPage结构体了解么？ </summary>

        是由多个以双向链表的形式连接起来的.

	的基本原理：在每个自动释放池创建的时候，会在当前的中设置一个标记位，在此期间，当有对象调用时，会把对象添加 中

	若当前页添加满了，会初始化一个新页，然后用双向量表链接起来，并把新初始化的这一页设置为,当自动释放池pop时，从最下面依次往上pop，调用每个对象的方法，直到遇到标志位。 
</details>

<details>
<summary> weak的实现原理是什么？当引用对象销毁是它是如何管理内部的Hash表的？ </summary>

        xxx
</details>

<details>
<summary> 对于基本数据类型，一般是存储到栈中的，它有没有可能存在堆上，什么情况下会存储到堆上？ </summary>

        xxx
</details>

<details>
<summary> 帧动画图片占用内存过大时如何解决？ </summary>

        xxx
</details>

<details>
<summary> atomic 和 nonatomic的区别 atomic一定是安全的吗 为什么 举个场景 </summary>

        xxx
</details>

<details>
<summary> 讲一下atomic的实现机制；为什么不能保证绝对的线程安全（最好可以结合场景来说）？ </summary>

        xxx
</details>

<details>
<summary> weak、strong 他们分别的实现原理 </summary>

        xxx
</details>

<details>
<summary> 对象的创见为什么要init 不要init可以吗 为什么 </summary>

        xxx
</details>

<details>
<summary> 介绍下内存的几大区域 </summary>

        xxx
</details>

##### Runtime
<details>
<summary> 消息发送的流程是怎样的？（消息机制） </summary>
	[runtime原理与实践: 消息转发篇](https://juejin.cn/post/6844903600968171533)
       
        1、检测这个selector的target是不是nil，如果selector的target不是nil，就开始查找方法的IMP实现
        2、先从当前类的缓存中查找IMP实现
        3、缓存没有，再从方法列表中查找
        4、方法列表没有，查找父类方法列表，这样按照继承关系一直查找到NSObject
        5、如果找到，直接跳转到方法的IMP实现。NSObject也找不到，系统默认直接报" unrecognized selector sent to instance 0x60000016c720 "
        
        在报异常之前可以通过runtime解决：
        1、动态方法解析: Method Resolution
        	通过 + (BOOL)resolveInstanceMethod:或者 + (BOOL)resolveClassMethod: 返回YES，并添加一个方法实现实现。runtime会重启一次消息发送。如果返回NO，则进入快速转发。
        	
        2、快速转发: Fast Rorwarding
        	通过- (id)forwardingTargetForSelector:(SEL)aSelector 返回一个新对象。runtime会向新对象重新发送消息。如果此方法返回的是nil 或者self，会进入完整消息转发。
        	
        3、完整消息转发: Normal Forwarding
        	runtime先通过- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector 对方法进行重签名。再通过- (void)forwardInvocation:(NSInvocation *)invocation进行转发。可转发给多个对象

</details>

<details>
<summary> 关联对象时什么情况下会导致内存泄露？ </summary>

        xxx
</details>

<details>
<summary> 消息转发的流程是什么？ </summary>

        xxx
</details>

<details>
<summary> category能否添加属性，为什么？能否添加实例变量，为什么？ </summary>

        可以添加属性，这里的属性指@property，但跟类里的@property又不一样。正常的@property为：实例变量Ivar + Setter + Getter 方法，分类里的@property这三者都没有，需要我们手动实现。

	分类是运行时被编译的，这时类的结构已经固定了，所以我们无法添加实例变量。

	对于分类自定义Setter和Getter方法，我们可以通过关联对象（Associated Object）进行实现。
</details>

<details>
<summary> category可以添加成员变量吗 为什么？ 如果对应的结构体有这个ivarList的数组 可以添加成员变量吗 为什么 </summary>

        xxx
</details>

<details>
<summary> 元类的作用是什么？ </summary>

	元类的作用是存储类方法，同时它也是为了让OC的类结构能够形成闭环。
        
       如果不要metaclass可不可以？也是可以的，在objc_class再加一个类方法指针。但是这样的设计会将消息传递的过程复杂化，所以为了消息传递流程的复用，为了一切皆对象的思想，就有了metaclass。
</details>

<details>
<summary> 类方法是存储到什么地方的？类属性呢？ </summary>

    类方法和类属性都是存储到元类中的。

	类属性在Swift用的多些，OC中很少有人用到，但其实它也是有的，写法如下：
	@interface Person : NSObject
	// 在属性类别中加上class
	@property (class, nonatomic, copy) NSString *name;
	@end
	// 调用方式
	NSString *temp = Person.name;
	需要注意的是跟实例属性不一样，类属性不会自动生成实例变量和setter，getter方法，需要我们手动实现。具体实现方法可以参考这个文章：Objective-C Class Properties

</details>

<details>
<summary> 讲几个runtime的应用场景。 </summary>

	hook系统方法进行方法交换。
	
	了解一个类（闭源）的私有属性和方法。
	
	关联对象，实现添加分类属性的功能。

	修改isa指针，自定义KVO。
	
	动态获取类名，创建对象。实现target-action的组件化方案
</details>

<details>
<summary> 分类和扩展的区别？ </summary>

        xxx
</details>

<details>
<summary> 交换方法需要注意什么？ </summary>

        xxx
</details>

<details>
<summary> +load与+initialize 什么时候被调用，它们的区别是 </summary>

        xxx
</details>

##### RunLoop
<details>
<summary> 讲一下对Runloop的理解？（RunLoop 的实现原理和数据结构，什么时候会用到） </summary>

        xxx
</details>

<details>
<summary> 可以用Runloop实现什么功能？ </summary>

	检测卡顿
	线程保活
	性能优化，将一些耗时操作放到runloop wait的情况处理。
	性能优化
</details>

<details>
<summary> RunLoop 的基本概念，它是怎么休眠的？ </summary>

        xxx
</details>

##### 多线程
<details>
<summary> GCD NSThread NSOPeration 使用的场景和区别 以及NSoperation的几种状态分别是什么？ </summary>

        xxx
</details>

<details>
<summary> NSOperation有哪些特性，比着GCD有哪些优点，它有哪些API？ </summary>

		NSOperation是对GCD的封装，具有面向对象的特点，可以更方便的进行封装，可以设置依赖关系。
</details>
		
<details>
<summary> 线程和进程的区别 </summary>

        xxx
</details>

<details>
<summary> GCD实现多读单写  </summary>

        xxx
</details>

<details>
<summary> 多线程数据竞争的解决方案 </summary>

        xxx
</details>

##### 性能优化
<details>
<summary> 对TableView进行性能优化有哪些方式？ </summary>

	缓存高度
	异步渲染
	减少离屏渲染
</details>

<details>
<summary> Xcode的Instruments都有哪些调试的工具？ </summary>

        xxx
</details>

<details>
<summary> 讲一下你做过的性能优化的事情。 </summary>

        xxx
</details>

<details>
<summary> 如何检测卡顿，都有哪些方法？ </summary>

        FPS，通过CADisplayLink计算1s内刷新次数，也可以利用Instruments里的Core Animation。
	利用Runloop，实时计算 kCFRunLoopBeforeSources 和 kCFRunLoopAfterWaiting 两个状态区域之间的耗时是否超过某个阀值
	子线程检测，每次检测时设置标记位为YES，然后派发任务到主线程中将标记位设置为NO。接着子线程沉睡超* 时阙值时长，判断标志位是否成功设置成NO，如果没有说明主线程发生了卡顿。参考ANREye的实现
</details>

<details>
<summary> 缩小包体积有哪些方案？ </summary>

    图片压缩，无用图片删除
	一些大图可以动态下发
	删除无用类，无用方法
	减少三方库的依赖
</details>

<details>
<summary> 项目编译的流程是什么？手机上的应用程序自点击图标开始到首屏内容展示都经历了哪些步骤？ </summary>

        编译流程：

			预处理：处理宏定义，删除注释，展开头文件。

			词法分析：把代码切成一个个token，比如大小括号等于号还有字符串

			语法分析：验证语法是否正确，合成抽象语法树AST

			静态分析：查找代码错误

			类型检查：动态和静态

			目标代码的生成与优化，包括删除多余指令，选择合适的寻址方式，如果开启了bitcode，会做进一步的优化

			汇编：由汇编器生成汇编语言

			机器码：由汇编语言转成机器码，生成.o文件

	应用启动的流程：

		启动的前提是完成编译，运行程序即运行编译过后的目标程序，它分为main函数前和main函数后：

	main前

		加载可执行文件（App的.o文件集合）

		加载动态链接库（系统和应用的动态链接库），进行rebase指针调整和bind符号绑定

		Objc运行时的初始处理，包括Objc相关类的注册，category注册，selector唯一性检查

		初始化，包括执行+load()、attribute(constructor)修饰的函数的调用、创建C++静态全局变量

	main后

		首页初始化所需要配置文件的读写操作

		首页界面渲染


</details>


##### 数据库
<details>
<summary> 数据库中的事务是什么意思？ </summary>

        事务就是访问并操作各种数据项的一个数据库操作序列，这些操作要么全部执行，要么全部不执行。如果其中一个步骤出错就要撤销整个操作，回滚到进入事务之前的状态。
</details>

<details>
<summary> 使用过什么数据库（我回答的Sqlite，Realm），Realm在使用时有哪些注意事项，如何实现批量操作？ </summary>

        xxx
</details>

<details>
<summary> 设计一套数据库方案，实现类似微信的搜索关键词能快速检索出包含该字符串的聊天信息，并展示对应数量（聊天记录的数据量较大） </summary>

        xxx
</details>

<details>
<summary> 常用的SQL语句 </summary>

        xxx
</details>

##### 其它
<details>
<summary> 静态库和动态库的区别是什么？ </summary>

        xxx
</details>

<details>
<summary> 动态库和静态库区别和联系 平时怎么使用的 现在使用动态库的目的是什么 （动态库会增加启动时间） 再说一下这种库加载过程以及如何优化 </summary>

        xxx
</details>

<details>
<summary> 了解Flutter吗？它有没有使用UIKit？它是如何渲染UI的？ </summary>

        xxx
</details>

<details>
<summary> 二进制重排的核心依据是什么？ </summary>

        xxx
</details>

<details>
<summary> 如何设计一套切换主题的方案？ </summary>

        xxx
</details>

<details>
<summary> 类似微博的短视频列表，滑动停留播放，如何实现？ </summary>

        xxx
</details>

<details>
<summary> 使用python或其它脚本语言（shell）做过哪些事？如何理解脚本语言？ </summary>

        xxx
</details>

<details>
<summary> 什么是Hash表，什么是Hash碰撞，解决Hash碰撞有什么方法？ </summary>

        xxx
</details>

<details>
<summary> iOS系统架构是什么样？ </summary>

        xxx
</details>

<details>
<summary> 说一下以往项目中 最有成就感的项目 并详细介绍使用到的技术点，以及如何攻破技术难点的 </summary>

        xxx
</details>

<details>
<summary> 说一下 无痕埋点以及如何实现 </summary>

        xxx
</details>

<details>
<summary> 说说你熟悉的第三方框架，解释一下它的原理 </summary>

        xxx
</details>

<details>
<summary> SDWebImage 下载了图片后为什么要解码？ </summary>

        xxx
</details>

<details>
<summary> 数组和链表的区别 </summary>

        xxx
</details>

<details>
<summary> UIView 生命周期 </summary>

        xxx
</details>

<details>
<summary> 如果页面 A 跳转到 页面 B，A 的 viewDidDisappear 方法和 B 的 viewDidAppear 方法哪个先调用？ </summary>

        xxx
</details>

<details>
<summary> 哈希表如何处理冲突 </summary>

        xxx
</details>

<details>
<summary>标记指针（tagged pointers）</summary>
	标记指针把对象直接存储在指针值中，因此它实际上是值类型，拷贝指针相当于拷贝对象。Objective-C 的库只会把不可变类型存储到标记指针中，所以使用的时候感受不到区别。有些 NSNumber 是引用类型，有些是值类型，但是使用上没有区别。
</details>

## 公司
#### 富途
<details>
<summary> 有三个杯子，容量各是10升、7升、3升。把10升的装满水。问：不用别的测量，怎样能将 10 升水分成两个 5 升。 </summary>

        xxx
</details>

<details>
<summary> 一个数组有0和非0（eg: [0、1、-1、0、2、5、0] ），把所有的0往前挪动，其它保持相对位置不变。要求时间复杂度O(n）空间复杂度O(1)。 </summary>

        xxx
</details>

<details>
<summary> KVO、KVC原理。他们只能针对属性吗？ </summary>

        xxx
</details>

<details>
<summary> __block、__weak区别 </summary>

        xxx
</details>

<details>
<summary> 宏和constant区别和使用场景 </summary>

        xxx
</details>
