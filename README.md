# Liszt-ProgressBar
很纯净的一个视频类进度条,可扩展,代码很简单
<img src="https://github.com/LisztGitHub/Liszt-ProgressBar/blob/master/Liszt.gif" />
#
    //
    //  ProgressBar.h
    //  ProgressBarDemo
    //
    //  Created by Liszt on 16/10/21.
    //  Copyright © 2016年 https://github.com/LisztGitHub. All rights reserved.
    //

    #import <UIKit/UIKit.h>

    @interface ProgressBar : UIView
    /** 背景颜色*/
    @property (strong, nonatomic) UIColor *bgColor;
    /** 进度条颜色*/
    @property (strong, nonatomic) UIColor *progressColor;
    /** 缓冲颜色*/
    @property (strong, nonatomic) UIColor *bufferColor;
    /** 播放进度*/
    @property (assign, nonatomic) CGFloat progressValue;
    /** 缓存进度*/
    @property (assign, nonatomic) CGFloat bufferProgressValue;
    @end

