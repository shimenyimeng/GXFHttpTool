//
//  UIImageView+SDWebImage.m
//  061-- GXFApplication
//
//  Created by 顾雪飞 on 17/4/17.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "UIImageView+SDWebImage.h"
#import <UIImageView+WebCache.h>

@implementation UIImageView (SDWebImage)

- (void)downLoadImage:(NSString *)url placeHolder:(NSString *)imageName {
    
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:imageName] options:SDWebImageRetryFailed | SDWebImageLowPriority];
}

- (void)downLoadImage:(NSString *)url
          placeHolder:(NSString *)imageName
              success:(DownLoadImageSuccessBlock)success
               failed:(DownLoadImageFailedBlock)failed
             progress:(DownLoadImageProgressBlock)progress {
    
    [self sd_setImageWithPreviousCachedImageWithURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:imageName] options:SDWebImageRetryFailed | SDWebImageLowPriority progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        
        progress((CGFloat)receivedSize / expectedSize);
        
    } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
        if (error) {
            
            failed(error);
            
        } else {
            
            self.image = image;
            success(image);
        }
        
    }];
    
}

@end
