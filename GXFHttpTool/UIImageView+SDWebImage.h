//
//  UIImageView+SDWebImage.h
//  061-- GXFApplication
//
//  Created by 顾雪飞 on 17/4/17.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^DownLoadImageSuccessBlock)(UIImage *image);
typedef void(^DownLoadImageFailedBlock)(NSError *error);
typedef void(^DownLoadImageProgressBlock)(CGFloat progress);

@interface UIImageView (SDWebImage)

- (void)downLoadImage:(NSString *)url placeHolder:(NSString *)imageName;

- (void)downLoadImage:(NSString *)url
          placeHolder:(NSString *)imageName
              success:(DownLoadImageSuccessBlock)success
               failed:(DownLoadImageFailedBlock)failed
             progress:(DownLoadImageProgressBlock)progress;

@end
