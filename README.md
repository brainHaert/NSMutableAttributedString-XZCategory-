
# NSMutableAttributedString-XZCategory-富文本的简单封装
######最下面有图<br>
封装为了更方便，因为我自己都不知道会不会记得那个name<br>
`NSMutableAttributedString+XZCategory.h`<br>
`NSMutableAttributedString+XZCategory.m`<br>
以上两个文件拖进项目里，在想用的地方`#import "NSMutableAttributedString+XZCategory.h"`<br>
即可

项目内有不少的中文注释，无需担心

/**改变某位置的颜色*/<br>
`-(NSRange)changeColor:(UIColor *)color rang:(NSRange)rang;`<br>
/**改变某位置的颜色*/<br>
`-(NSRange)changeColor:(UIColor *)color from:(NSInteger)loc legth:(NSInteger)legth;`<br>

/**改变某位置的普通字号*/<br>
`-(NSRange)changeSystemFontFloat:(CGFloat)fontFloat rang:(NSRange)rang;`<br>
/**改变某位置的普通字号*/<br>
`-(NSRange)changeSystemFontFloat:(CGFloat)fontFloat from:(NSInteger)loc legth:(NSInteger)legth;`<br>

/**改变某位置的粗体字号*/<br>
`-(NSRange)changeBoldFontFloat:(CGFloat)fontFloat rang:(NSRange)rang;`<br>
/**改变某位置的粗体字号*/<br>
`-(NSRange)changeBoldFontFloat:(CGFloat)fontFloat from:(NSInteger)loc legth:(NSInteger)legth;`<br>

/**改变某位置的行距*/<br>
`-(NSRange)changelineSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth;`<br>

/**改变某位置的段落距离*/<br>
`-(NSRange)changelparagraphSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth;`<br>

/**改变段的顶部和文本内容的开头之间的距离。*/<br>
`-(NSRange)changeBeforeLparagraphSpacing:(CGFloat)spacing from:(NSInteger)loc legth:(NSInteger)legth;`<br>

/**根据位置加下划线*/<br>
`-(NSRange)changeUnderlineWitRang:(NSRange)rang;`<br>
/**根据位置加下划线*/<br>
`-(NSRange)changeUnderlineFrom:(NSInteger)loc legth:(NSInteger)legth;`<br>
/**全部加下划线*/<br>
`-(void)changeUnderlineAtAll;`<br>

/**根据位置加中划线*/<br>
`-(NSRange)changeStrikethroughWitRang:(NSRange)rang;`<br>
/**根据位置加中划线*/<br>
`-(NSRange)changeStrikethroughFrom:(NSInteger)loc legth:(NSInteger)legth;`<br>
/**全部加中划线*/<br>
`-(void)changeStrikethroughAtAll;`<br>

![](https://raw.githubusercontent.com/brainHaert/NSMutableAttributedString-XZCategory-/master/textAtt1.png)
