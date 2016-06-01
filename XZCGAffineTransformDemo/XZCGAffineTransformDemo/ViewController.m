//
//  ViewController.m
//  XZCGAffineTransformDemo
//
//  Created by 徐章 on 16/6/1.
//  Copyright © 2016年 徐章. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *transformView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)okBtn_Pressed:(id)sender {
    
    /** Scale*/
    //CGAffineTransform transform = CGAffineTransformMakeScale(2, 1.5);
    //CGAffineTransform transform = CGAffineTransformScale(self.transformView.transform, 2, 1.5);
    
    /** Translation*/
    //CGAffineTransform transform = CGAffineTransformMakeTranslation(-100, 100);
    //CGAffineTransform transform = CGAffineTransformTranslate(self.transformView.transform, -100, 100);
    
    /** Rotation*/
    //CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI);
    //CGAffineTransform transform = CGAffineTransformRotate(self.transformView.transform, M_PI_4);
   
    /** Invert*/
    //CGAffineTransform transform = CGAffineTransformMakeTranslation(-100, 100);
    //transform = CGAffineTransformInvert(transform);
    
    /** Concat*/
    //CGAffineTransform transform1 = CGAffineTransformMakeRotation(M_PI_4);
    //CGAffineTransform transform2 = CGAffineTransformMakeTranslation(100, 100);
    //CGAffineTransform transform = CGAffineTransformConcat(transform1, transform2);
    
    //[UIView animateWithDuration:1 animations:^{
    //    self.transformView.transform = transform;
    //} completion:^(BOOL finished) {
        
    //    NSLog(@"%@",NSStringFromCGRect(self.transformView.frame));
    //}];
    
    //CGPoint point = CGPointMake(100, 100);
    //point = CGPointApplyAffineTransform(point, CGAffineTransformMakeScale(2, 2));
    //NSLog(@"%@",NSStringFromCGPoint(point));
    
    //CGSize size = CGSizeMake(100, 100);
    //size = CGSizeApplyAffineTransform(size, CGAffineTransformMakeScale(2, 2));
    //NSLog(@"%@",NSStringFromCGSize(size));
    
    CGRect rect = CGRectMake(100, 100,100, 100);
    rect = CGRectApplyAffineTransform(rect, CGAffineTransformMakeRotation(M_PI_4));
    self.transformView.frame = rect;
}

@end
