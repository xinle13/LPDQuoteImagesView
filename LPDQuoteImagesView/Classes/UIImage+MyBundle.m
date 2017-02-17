//
//  UIImage+MyBundle.m
//  LPDQuoteSystemImagesController
//
//  Created by 李永光－饿了么－iOS开发 on 2016/12/19.
//  Copyright © 2016年 李永光－饿了么－iOS开发. All rights reserved.
//

#import "UIImage+MyBundle.h"
#import "LPDQuoteImagesView.h"

@implementation UIImage (MyBundle)

+ (UIImage *)imageNamedFromMyBundle:(NSString *)name {
    NSBundle *bundle = [NSBundle bundleForClass:[LPDQuoteImagesView class]];
    return [UIImage imageNamed:name inBundle:[NSBundle bundleWithPath:[NSString stringWithFormat:@"%@/LPDImagePickerController.bundle", bundle.bundlePath]] compatibleWithTraitCollection:nil];
    
}
@end
