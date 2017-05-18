#1.安装
在podFile中添加 pod 'MLChain'，并安装完成后打开。
#2.解锁链式方法容器文件
由于链式方法需要根据项目中的类已实现的方法生成方法列表，笔者将链式方法放在固定路径，并把所有的链式方法都放在MLChainContainer.h和MLChainContainer.m文件中。
![须解锁文件图示](http://upload-images.jianshu.io/upload_images/2202779-02c88cf7e13995e4.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![对MLChainContainer文件解锁](http://upload-images.jianshu.io/upload_images/2202779-c53ac21fdc4d35ad.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#3.设置项目地址
在项目的info.plist文件中，设置项目地址用于链式方法的写入（第四步操作的主要依据）
key:ProjectDirectory 
value:$(SRCROOT)
![plist文件添加键值对](http://upload-images.jianshu.io/upload_images/2202779-22818f585895e187.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#4.生成链式方法
导入MLChain的头文件，然后调用生成方法，运行一遍，你要的链式方法都在MLChainContainer.h和MLChainContainer.m文件中
因为链式方法数量大且出错时难以修复，笔者在生成时做了备份。笔者在运行时会在电脑桌面也生成一份，并将旧的一份丢到回收站。如果cocoaPods需要更新，则需要将复制内容到MLChainContainer.h和MLChainContainer.m文件。
![调用生成方法](http://upload-images.jianshu.io/upload_images/2202779-dfb032de0c9d287f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
#5.开始使用
链式方法生成一次就可以使用，下次使用除非有新方法更新。

![开始使用](http://upload-images.jianshu.io/upload_images/2202779-c5c1ae5b56e494c8.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
```
UIView *view = UIView.mlc_make.frame_(100, 100, 100, 100).backgroundColor([UIColor cyanColor]).chainObject;
[self.view addSubview:view];
```
![运行效果](http://upload-images.jianshu.io/upload_images/2202779-b3d3f14b44f3da9a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
