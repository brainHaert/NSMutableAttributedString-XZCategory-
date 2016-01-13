//
//  ViewController.m
//  play
//
//  Created by admin on 16/1/5.
//  Copyright (c) 2016年 XieZi. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableAttributedString+XZCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    [self.view addSubview:label];
    NSString *str = @"哈哈哈哈哈哈哈哈哈哈哈飞机哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈\n哈哈哈哈哈哈\n哈哈哈哈哈哈\n哈哈哈哈哈哈\n哈哈哈哈哈哈";
    NSString *tttt = @"飞机";
    NSRange rrrr = [str rangeOfString:tttt];
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc]initWithString:str];
    //局部文字改变字号
//    [attr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:26] range:NSMakeRange(0, 1)];
//    [attr changeSystemFontFloat:26 from:0 legth:3];
//    [attr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:26] range:rrrr];
    
    //局部文字改变颜色
//    [attr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:rrrr];
//    [attr changeColor:[UIColor redColor] from:0 legth:1];
    
    [attr changeColor:[UIColor purpleColor] rang:[attr changeSystemFontFloat:26 from:0 legth:3]];
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    //行距
    style.lineSpacing = 10.0f;
    //段落距离
    style.paragraphSpacing = 20.0f;
    //段的顶部和文本内容的开头之间的距离。
//    style.paragraphSpacingBefore = 60.0f;
    
    [attr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, str.length)];
    
    //    下划线
//    [attr addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, 2)];
//    [attr changeUnderlineFrom:0 legth:2];
    [attr changeUnderlineWitRang:rrrr];
    
    //中划线
    [attr addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:rrrr];
    
    label.attributedText = attr;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
