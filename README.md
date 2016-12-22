# LPDQuoteSystemImagesView
(imagePicker--pickImage and quote)只需要几行简单的代码，就可以引入多选照片(仿qq微信)并引用照片的功能模块(只需要贴上view，就获得了全部).这里要感谢TZImagePickerController！！  所有的功能都集成到了黑盒里，只需要初始化view和取得view的已选择照片数组。（整个库包含必需资源只有270k）
简单介绍下用法（目前）
1.引入头文件LPDQuoteSystemImagesView.h

2.在一个controller类里， 初始化一个quoteSystemImagesView (UIview)

LPDQuoteSystemImagesView *quoteSystemImagesView = [[LPDQuoteSystemImagesView alloc] initWithFrame:CGRectMake(x, y, width, hight) withCountPerRowInView:countPerRow cellMargin:12];
//初始化view的frame, view里每行cell个数， cell间距
    quoteSystemImagesView.maxSelectedCount = 6; 
    //最大可选照片数
     quoteSystemImagesView.collectionView.scrollEnabled = NO;
    //view可否滑动 
    quoteSystemImagesView.navcDelegate = self;
    //委托（委托controller弹出picker，且不用实现委托方法）
    [xview addSubview:quoteSystemImagesView];
    //把view加到某一个视图上
    
3.获取引用图片  
 NSArray<UIImage *> *imageArray = [NSArray arrayWithArray:quoteSystemImagesView.selectedPhotos];
 //即可
 
 ////只需要贴上view，其他的在图库选照片，预览，保存，更新缩略图均不需要其他对象参与；
 
效果图

![image](https://github.com/Assuner-Lee/LPDQuoteSystemImagesView/blob/master/效果图1.jpg)
![image](https://github.com/Assuner-Lee/LPDQuoteSystemImagesView/blob/master/效果图2.PNG)
![image](https://github.com/Assuner-Lee/LPDQuoteSystemImagesView/blob/master/效果图3.PNG)
