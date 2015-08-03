//
//  ImageMerge.m
//  ImageMerge
//


#import "ImageMerge.h"

@implementation ImageMerge

+ (UIImage *)mergeWithMainImage:(UIImage *)mainImage andImageArray:(NSArray *)array{
    CGImageRef mainImgRef = mainImage.CGImage;
    NSUInteger mWidth = CGImageGetWidth(mainImgRef);
    NSUInteger mHeight = CGImageGetHeight(mainImgRef);
    UIGraphicsBeginImageContext(CGSizeMake(mWidth, mHeight));
    [mainImage drawInRect:CGRectMake(0, 0, mWidth, mHeight)];
    
    for(int i=0; i<array.count; i++){
        UIImage *image = array[i];
//                NSUInteger width = CGImageGetWidth(imgRef);
//                NSUInteger height = CGImageGetHeight(imgRef);
        NSInteger width = 680;//设置宽度
        NSInteger height = 680;
        CGFloat x = (mWidth-width)/2;
        CGFloat y = (mHeight-height)/2;
        
        [image drawInRect:CGRectMake(x, y, width, height)];
        
    }
    UIImage *resultImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return resultImg;
}
@end
