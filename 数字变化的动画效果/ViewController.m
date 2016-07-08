//
//  ViewController.m
//  数字变化的动画效果
//
//  Created by 王奥东 on 16/7/8.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import "ViewController.h"
#import "UICountingLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    //创建继承CountingLabel的Label
    UICountingLabel *label = [[UICountingLabel alloc]initWithFrame:CGRectMake(100, 100, 220, 44)];
   
    //设置文本样式
    //两种样式
    label.format = @"%.2f";
//
//    label.formatBlock = ^NSString *(CGFloat value){
//      
//        NSInteger year = value / 12;
//        
//        NSInteger months = (NSInteger)value % 12;
//        
//        if (year == 0) {
//            
//            return [NSString stringWithFormat:@"%ld months",months];
//        }else{
//         
//            return [NSString stringWithFormat:@"%ld year %ld months",year,months];
//        }
//    };
//    
    //动画的范围与时间
    [label countFrom:100 to:1400000 withDuration:5.0f];
//
//    //以下普通样式的实例化
    label.textAlignment = NSTextAlignmentCenter;
    
    label.font = [UIFont systemFontOfSize:30];
    
    label.textColor = [UIColor colorWithRed:236/255.0 green:66/255.0 blue:43/255.0 alpha:1];
    
    
    //若添加以下代码代表要显示千位分隔符
    //以下是自己修改后的样式实例化
    label.positiveFormat = @"###,###,##0.00";
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    [self.view addSubview:label];
   
}



@end
