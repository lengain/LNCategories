//
//  UIImage+LNCompress.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LNCompress)

/**
 *  按照宽度来压缩图片
 *
 *  @param defineWidth 宽度
 *
 *  @return 压缩后的图片
 */
- (UIImage *)ln_compressWithDefineWidth:(CGFloat)defineWidth;


/**
 *  微信分享链接,得到小于32k的图片.
 *
 *  @return 压缩后的图片.如果为nil,表示压缩失败.
 */
- (UIImage *)ln_compressUnder32KBImage;


/**
 *  得到小于imageSize kb的图片.
 *
 *  @param imageSize           imageSize
 *
 *  @return return value description
 */
- (UIImage *)ln_compressUnder:(NSInteger)imageSize;

@end
