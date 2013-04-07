//
//  MonochromeFilter.h
//  RealTimeProcessing
//
//  Created by hirai.yuki on 2013/04/07.
//  Copyright (c) 2013年 hirai.yuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MonochromeFilter : NSObject

+ (CGImageRef)doFilter:(CGImageRef)image;

@end
