//
//  OpenCVUtil.h
//  RealTimeProcessing
//
//  Created by hirai.yuki on 2013/04/07.
//  Copyright (c) 2013年 hirai.yuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <opencv2/opencv.hpp>

/**
 OpenCV用ユーティリティクラス
 */
@interface OpenCVUtil : NSObject

/**
 CGImageをOpenCV画像データに変換するメソッド
 
 @param     image       CGImageRef
 @return    `IplImage`インスタンス
 */
+ (IplImage *)newIplImageFromCGImage:(CGImageRef)image;

/**
 OpenCV画像データをCGImageに変換するメソッド
 
 @param     image `IplImage`インスタンス
 @return    CGImageRef
 */
+ (CGImageRef)newCGImageFromIplImage:(IplImage *)image;

@end
