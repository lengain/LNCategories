//
//  UIButton+LNFrame.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "UIButton+LNFrame.h"

@implementation UIButton (LNFrame)

- (float)ln_imageLeft{
    return self.imageView.frame.origin.x;
}


- (void)ln_setImageLeft:(float)imageLeft{
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        //相对于初始位置的偏移,AlignmentLeft时image初始位置永远为0,0
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, imageLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, - (self.frame.size.width-self.titleLabel.frame.size.width-self.imageView.frame.size.width)/2+imageLeft, 0, (self.frame.size.width-self.titleLabel.frame.size.width-self.imageView.frame.size.width)/2-imageLeft)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width-imageLeft)];
        });
    }
}

- (float)ln_titleLeft{
    return self.titleLabel.frame.origin.x;
}

- (void)ln_setTitleLeft:(float)titleLeft{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width+titleLeft, 0, 0)];
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, - (self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width+titleLeft, 0, (self.frame.size.width-self.imageView.frame.size.width-self.titleLabel.frame.size.width)/2+self.imageView.frame.size.width-titleLeft)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, (self.frame.size.width-self.titleLabel.frame.size.width)-titleLeft)];
        });
    }
    
}


- (float)ln_titleCenter{
    
    return self.frame.size.width/2;
}

- (void)ln_setTitleCenter{
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        //相对于初始位置的偏移,AlignmentLeft时title初始位置永远为image的右边位置(当title改变时马上执行此方法，titlelabel的frame还没修改，所以要延时处理)
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, (self.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width, 0, 0)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, (self.imageView.frame.size.width)/2-self.imageView.frame.size.width, 0, - (self.imageView.frame.size.width)/2+self.imageView.frame.size.width)];
        });
        
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, - (self.frame.size.width-self.titleLabel.frame.size.width)/2+self.frame.size.width-self.titleLabel.frame.size.width)];
        });
    }
    
}


- (void)ln_setImageToTitleRight{
    [self ln_setImageToTitleRightWithPadding:0];
}

- (void)ln_setImageToTitleRightWithPadding:(CGFloat)padding{
    [self ln_setImageToTitleRightWithPadding:padding isDelay:YES];
}

- (void)ln_setImageToTitleRightWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay{
    if (isDelay) {
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, 0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0)];
            });
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width - padding, 0, self.imageView.frame.size.width + padding)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + padding, 0, -self.titleLabel.frame.size.width - padding)];
            });
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.imageView.frame.size.width)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -self.titleLabel.frame.size.width)];
            });
        }
    }else{
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width, 0, 0)];
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -self.imageView.frame.size.width - padding, 0, self.imageView.frame.size.width + padding)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, self.titleLabel.frame.size.width + padding, 0, -self.titleLabel.frame.size.width - padding)];
            
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, self.imageView.frame.size.width)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -self.titleLabel.frame.size.width)];
        }
    }
}

- (void)ln_setImageAndTitleWithPadding:(CGFloat)padding {
    [self ln_setImageAndTitleWithPadding:padding isDelay:YES];
}

- (void)ln_setImageAndTitleWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay{
    
    if (isDelay) {
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
                [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, padding)];
            });
        }
    }else{
        if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, padding, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
            
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter){
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, -padding)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, padding)];
            
        }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, padding)];
        }
    }
}

- (void)ln_setImageAndTitleCenterImageTopWithpadding:(float)padding{
    
    if (!padding) {
        padding = 0;
    }
    
    CGFloat imageSizeWidth = self.imageView.frame.size.width;
    [self.titleLabel sizeToFit];
    CGFloat titleSizeWidth = self.titleLabel.frame.size.width;
    CGFloat titleSizeHeight = self.titleLabel.frame.size.height;
    
    //如果文字跟图片的宽度大于button的宽度，则要设置contentEdgeInsets，不然文字会消失不见。因为UIButton内部应该是autolayout的。
    if (imageSizeWidth+titleSizeWidth>self.frame.size.width) {
        CGFloat outWidth = imageSizeWidth+titleSizeWidth - self.frame.size.width;
        self.contentEdgeInsets = UIEdgeInsetsMake(0, -outWidth, 0, -outWidth);
    }
    
    CGFloat topAndBottomMargin = (self.frame.size.height - self.imageView.frame.size.height - titleSizeHeight - padding)/2;
    CGFloat imageLeftInset = self.frame.size.width/2 - (self.imageView.frame.origin.x + self.imageView.frame.size.width/2);
    CGFloat titleLeftInset = self.titleLabel.frame.origin.x + self.titleLabel.frame.size.width/2 - self.frame.size.width/2;
    
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.origin.y + topAndBottomMargin, imageLeftInset, self.imageView.frame.origin.y - topAndBottomMargin, 0)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.frame.size.height - self.titleLabel.frame.size.height - topAndBottomMargin*2, -titleLeftInset, 0, 0)];
        });
        
    }else if (self.contentHorizontalAlignment == UIControlContentHorizontalAlignmentCenter){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.origin.y + topAndBottomMargin, imageLeftInset, self.imageView.frame.origin.y - topAndBottomMargin, -imageLeftInset)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.frame.size.height - self.titleLabel.frame.size.height - topAndBottomMargin*2, -titleLeftInset, 0, titleLeftInset)];
        });
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.frame.origin.y + topAndBottomMargin, 0, self.imageView.frame.origin.y - topAndBottomMargin, -imageLeftInset)];
                
                [self setTitleEdgeInsets:UIEdgeInsetsMake(self.frame.size.height - self.titleLabel.frame.size.height - topAndBottomMargin*2, -titleLeftInset, 0, titleLeftInset)];
            });
        });
    }
}

- (void)ln_setImageAndTitleCenterTitleTopWithpadding:(float)padding{
    
    if (!padding) {
        padding = 0;
    }
    
    if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentLeft) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height+padding, (self.frame.size.width-self.imageView.frame.size.width)/2, 0, 0)];
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.frame.size.height-padding, (self.frame.size.width-self.titleLabel.frame.size.width)/2-self.imageView.frame.size.width, 0, 0)];
        });
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentCenter) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height+padding, self.titleLabel.frame.size.width/2, 0, -self.titleLabel.frame.size.width/2)];
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.frame.size.height-padding, -self.imageView.frame.size.width/2, 0, self.imageView.frame.size.width/2)];
        });
    }else if (self.contentHorizontalAlignment==UIControlContentHorizontalAlignmentRight){
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.01 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.frame.size.height+padding, 0, 0, (self.frame.size.width-self.imageView.frame.size.width)/2-self.titleLabel.frame.size.width)];
            
            
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.frame.size.height-padding, 0, 0, (self.frame.size.width-self.titleLabel.frame.size.width)/2)];
        });
    }
}


@end
