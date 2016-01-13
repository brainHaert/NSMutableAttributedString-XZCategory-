//
//  NSMutableAttributedString+XZCategory.h
//  play
//
//  Created by admin on 16/1/12.
//  Copyright (c) 2016年 XieZi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (XZCategory)

/**改变某位置的颜色*/
-(NSRange)changeColor:(UIColor *)color rang:(NSRange)rang;
/**改变某位置的颜色*/
-(NSRange)changeColor:(UIColor *)color from:(NSInteger)loc legth:(NSInteger)legth;

/**改变某位置的普通字号*/
-(NSRange)changeSystemFontFloat:(CGFloat)fontFloat rang:(NSRange)rang;
/**改变某位置的普通字号*/
-(NSRange)changeSystemFontFloat:(CGFloat)fontFloat from:(NSInteger)loc legth:(NSInteger)legth;

/**改变某位置的粗体字号*/
-(NSRange)changeBoldFontFloat:(CGFloat)fontFloat rang:(NSRange)rang;
/**改变某位置的粗体字号*/
-(NSRange)changeBoldFontFloat:(CGFloat)fontFloat from:(NSInteger)loc legth:(NSInteger)legth;

/**改变某位置的行距*/
-(NSRange)changelineSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth;

/**改变某位置的段落距离*/
-(NSRange)changelparagraphSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth;

/**改变段的顶部和文本内容的开头之间的距离。*/
-(NSRange)changeBeforeLparagraphSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth;

/**根据位置加下划线*/
-(NSRange)changeUnderlineWitRang:(NSRange)rang;
/**根据位置加下划线*/
-(NSRange)changeUnderlineFrom:(NSInteger)loc legth:(NSInteger)legth;
/**全部加下划线*/
-(void)changeUnderlineAtAll;

/**根据位置加中划线*/
-(NSRange)changeStrikethroughWitRang:(NSRange)rang;
/**根据位置加中划线*/
-(NSRange)changeStrikethroughFrom:(NSInteger)loc legth:(NSInteger)legth;
/**全部加中划线*/
-(void)changeStrikethroughAtAll;


@end
