//
//  Colors.h
//  ZjddConsumer
//
//  Created by 郑飞 on 6/28/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


// no alpha included
#define UIColorFromHex(x)   [UIColor colorWithRed:((x>>16)&0xff)/255.0f green:((x>>8)&0xff)/255.0f blue:(x&0xff)/255.0f alpha:1]
#define UIColorFromHexWithAlpha(x, a)   [UIColor colorWithRed:((x>>16)&0xff)/255.0f green:((x>>8)&0xff)/255.0f blue:(x&0xff)/255.0f alpha:a]

#define ZjddGreenColor  UIColorFromHex(0x32b77d)

