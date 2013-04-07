//
//  MonochromeFilter.m
//  RealTimeProcessing
//
//  Created by hirai.yuki on 2013/04/07.
//  Copyright (c) 2013年 hirai.yuki. All rights reserved.
//

#import "MonochromeFilter.h"
#import "OpenCVUtil.h"

@implementation MonochromeFilter

+ (CGImageRef)doFilter:(CGImageRef)image
{
    // CGImageからIplImageを作成
    IplImage *srcImage       = [OpenCVUtil newIplImageFromCGImage:image];
    IplImage *grayScaleImage = cvCreateImage(cvGetSize(srcImage), IPL_DEPTH_8U, 1);
    IplImage *dstImage       = cvCreateImage(cvGetSize(srcImage), IPL_DEPTH_8U, 3);
    
    // グレースケール画像に変換
    cvCvtColor(srcImage, grayScaleImage, CV_BGR2GRAY);
    
    // CGImage用にBGRに変換
    cvCvtColor(grayScaleImage, dstImage, CV_GRAY2BGR);
    
    // IplImageからCGImageを作成
    CGImageRef effectedImage = [OpenCVUtil newCGImageFromIplImage:dstImage];
    
    cvReleaseImage(&srcImage);
    cvReleaseImage(&grayScaleImage);
    cvReleaseImage(&dstImage);
    
    return effectedImage;
}

@end
