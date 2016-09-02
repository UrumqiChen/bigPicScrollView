//
//  homeBigPicView.h
//  Kozinake
//
//  Created by kys on 16/3/24.
//  Copyright © 2016年 KYS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
@protocol kysScrollPicDelegate<NSObject>
@optional
- (void)clickPicWithindex:(NSInteger)index;
@end
@interface kysScrollPicView : UIView<UIScrollViewDelegate>
{
    UIScrollView *_mainScrollView;
    UIPageControl *_pageController;
    UIImageView *_leftImageView;
    UIImageView *_centerImageView;
    UIImageView *_rightImageView;
    NSTimer *_time;
    //数据
    NSArray *_titleList;
    NSArray *_imageList;
    NSInteger _currentIndex;
    CGSize _baseSize;
}
//定制颜色
@property (nonatomic,weak) id<kysScrollPicDelegate>delegate;
@property (nonatomic) NSTimeInterval autoScrollTime;
- (void)setCurrentPageIndicatorColor:(UIColor*)current otherPageIndicator:(UIColor*)other;
- (void)setDatasWithTitleArray:(NSArray *)titleArray imageArray:(NSArray *)imageArray;
- (void)pause;
- (void)restart;
@end
