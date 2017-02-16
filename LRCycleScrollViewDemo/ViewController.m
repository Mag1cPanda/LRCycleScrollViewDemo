//
//  ViewController.m
//  LRCycleScrollViewDemo
//
//  Created by Mag1cPanda on 2017/2/15.
//  Copyright © 2017年 Mag1cPanda. All rights reserved.
//

#import "ViewController.h"
#import "LRCycleScrollView.h"

@interface ViewController ()
<LRCycleScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LRCycleScrollView *cycleScrollView = [LRCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 200) placeholderImage:[UIImage imageNamed:@"slide_img"]];
    cycleScrollView.delegate = self;
//    cycleScrollView.pageControlStyle = LRPageContolStyleAnimated;
//    cycleScrollView.currentPageDotImage = [UIImage imageNamed:@"slide_navon"];
//    cycleScrollView.pageDotImage = [UIImage imageNamed:@"slide_nav"];
//    cycleScrollView.pageControlRightOffset = 50;
    cycleScrollView.pageControlBottomOffset = 30;
    cycleScrollView.infiniteLoop = YES;
    cycleScrollView.autoScrollTimeInterval = 3.0;

    
    //block回调
//    cycleScrollView.scrollHandle = ^(NSInteger index){
//        NSLog(@"Scroll to index ~ %zi",index);
//    };
//    
//    cycleScrollView.clickHandle = ^(NSInteger index){
//        NSLog(@"Click index ~ %zi",index);
//    };
    
    [self.view addSubview:cycleScrollView];
    
    //设置本地图
//    cycleScrollView.localImageNamesGroup = @[@"slide_img",@"slide_img",@"slide_img"];
    
    //设置网络图片
    NSArray *imgURLArr = @[@"http://p1.bqimg.com/567571/bb20a661a0210133.jpg",
                           @"http://p1.bqimg.com/567571/d159dd39c15025ce.jpg",
                           @"http://p1.bpimg.com/567571/1a105a4f6ab5f7ce.jpg",
                           @"http://p1.bpimg.com/567571/f289c6248725d93b.jpg",
                           @"http://p1.bpimg.com/567571/7fffbfba12359c0b.jpg",
                           @"http://p1.bqimg.com/567571/ccb99ecef6f67ba0.jpg"];
    
    cycleScrollView.imageURLStringsGroup = imgURLArr;
    
    cycleScrollView.titlesGroup = @[@"http://p1.bqimg.com/567571/bb20a661a0210133.jpg",
                                    @"http://p1.bqimg.com/567571/d159dd39c15025ce.jpg",
                                    @"http://p1.bpimg.com/567571/1a105a4f6ab5f7ce.jpg",
                                    @"http://p1.bpimg.com/567571/f289c6248725d93b.jpg",
                                    @"http://p1.bpimg.com/567571/7fffbfba12359c0b.jpg",
                                    @"http://p1.bqimg.com/567571/ccb99ecef6f67ba0.jpg"];
    
    
}

#pragma mark - Delegate Method
-(void)cycleScrollView:(LRCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index
{
    NSLog(@"Scroll to index ~ %zi",index);
}

-(void)cycleScrollView:(LRCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"Click index ~ %zi",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
