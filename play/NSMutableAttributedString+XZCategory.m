//
//  NSMutableAttributedString+XZCategory.m
//  play
//
//  Created by admin on 16/1/12.
//  Copyright (c) 2016年 XieZi. All rights reserved.
//

#import "NSMutableAttributedString+XZCategory.h"

@implementation NSMutableAttributedString (XZCategory)

#pragma mark 改变某位置的颜色
-(NSRange)changeColor:(UIColor *)color rang:(NSRange)rang{
    [self addAttribute:NSForegroundColorAttributeName value:color range:rang];
    return rang;
}
-(NSRange)changeColor:(UIColor *)color from:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    [self changeColor:color rang:rang];
    return rang;
}
#pragma mark 改变某位置的普通字号
-(NSRange)changeSystemFontFloat:(CGFloat)fontFloat rang:(NSRange)rang{
    [self addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontFloat] range:rang];
    return rang;
}
-(NSRange)changeSystemFontFloat:(CGFloat)fontFloat from:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    [self changeSystemFontFloat:fontFloat rang:rang];
    return rang;
}
#pragma mark 改变某位置的粗体字号
-(NSRange)changeBoldFontFloat:(CGFloat)fontFloat rang:(NSRange)rang{
    [self addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:fontFloat] range:rang];
    return rang;
}
-(NSRange)changeBoldFontFloat:(CGFloat)fontFloat from:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    [self changeBoldFontFloat:fontFloat rang:rang];
    return rang;
}
#pragma mark 改变某位置的行距
-(NSRange)changelineSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    //行距
    style.lineSpacing = spacing;
    [self addAttribute:NSParagraphStyleAttributeName value:style range:rang];
    return rang;
}
#pragma mark 改变某位置的段落距离
-(NSRange)changelparagraphSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    //段落距离
    style.paragraphSpacing = spacing;
    [self addAttribute:NSParagraphStyleAttributeName value:style range:rang];
    return rang;
}
#pragma mark 改变段的顶部和文本内容的开头之间的距离。
-(NSRange)changeBeforeLparagraphSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
    //段的顶部和文本内容的开头之间的距离。
    style.paragraphSpacingBefore = spacing;
    [self addAttribute:NSParagraphStyleAttributeName value:style range:rang];
    return rang;
}
#pragma mark 根据位置、长度加下划线
-(NSRange)changeUnderlineWitRang:(NSRange)rang{
    [self addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:rang];
    return rang;
}
-(NSRange)changeUnderlineFrom:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    [self changeUnderlineWitRang:rang];
    return rang;
}

#pragma mark 加下划线all
-(void)changeUnderlineAtAll{
    NSRange rang = NSMakeRange(0, self.length);
    [self changeUnderlineWitRang:rang];
}
#pragma mark 根据位置加中划线
-(NSRange)changeStrikethroughWitRang:(NSRange)rang{
    [self addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:rang];
    return rang;
}
-(NSRange)changeStrikethroughFrom:(NSInteger)loc legth:(NSInteger)legth{
    NSRange rang = NSMakeRange(loc, legth);
    [self changeStrikethroughWitRang:rang];
    return rang;
}
#pragma mark 加中划线all
-(void)changeStrikethroughAtAll{
    NSRange rang = NSMakeRange(0, self.length);
    [self changeStrikethroughWitRang:rang];
}




@end
