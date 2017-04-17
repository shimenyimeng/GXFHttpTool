//
//  ViewController.m
//  GXFHttpTool
//
//  Created by 顾雪飞 on 17/4/11.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "ViewController.h"
#import "GXFHttpTool.h"
#import <UIImageView+WebCache.h>
#import "GXFView.h"
#import "UIImageView+SDWebImage.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet GXFView *roundView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [GXFHttpTool getWithPath:@"http://www.who.int/entity/campaigns/immunization-week/2015/large-web-banner.jpg?ua=1" params:nil success:^(id json) {
//        
//        self.iconView.image = [UIImage imageWithData:json];
//        
//    } failure:^(NSError *error) {
//        
//        NSLog(@"%@", error);
//    }];
    
    [self.iconView downLoadImage:@"http://www.who.int/entity/campaigns/immunization-week/2015/large-web-banner.jpg?ua=1" placeHolder:@"" success:^(UIImage *image) {
        
        
    } failed:^(NSError *error) {
        
        
    } progress:^(CGFloat progress) {
        
        NSLog(@"%f", progress);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.roundView.progress = progress;
        });
    }];
    
//    [GXFHttpTool downLoadWithPath:@"http://www.who.int/entity/campaigns/immunization-week/2015/large-web-banner.jpg?ua=1" success:^(id json) {
//        
//        NSLog(@"%@", json);
//        self.iconView.image = [UIImage imageWithContentsOfFile:json];
//        
//    } failure:^(NSError *error) {
//        
//        NSLog(@"%@", error);
//        
//    } progress:^(CGFloat progress) {
//        
//        NSLog(@"%f", progress);
//        
//        dispatch_async(dispatch_get_main_queue(), ^{
//            
//            self.roundView.progress = progress;
//        });
//        
//    }];
    
//    NSURL *URL = [NSURL URLWithString:@"http://pic9.nipic.com/20100904/4845745_195609329636_2.jpg"];
//    [self.iconView sd_setImageWithURL:URL];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
