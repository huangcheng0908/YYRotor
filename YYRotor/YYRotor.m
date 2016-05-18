//
//  YYRotor.m
//  YYRotor
//
//  Created by mac on 16/5/17.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import "YYRotor.h"

@implementation YYRotor

-(void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.1];
    self.YYView.layer.cornerRadius = 8.0;
    
    NSMutableArray * dataSource = [NSMutableArray array];
    NSMutableArray * rotoArr = [NSMutableArray array];
    
    for (int i = 1; i <= 9; i++)
    {
        UIImage * img = [UIImage imageNamed:[NSString stringWithFormat:@"%d",i]];
        [dataSource addObject: img];
    }
    
    for (int i = 1; i <= 5; i++)
    {
        UIImage * img = [UIImage imageNamed:[NSString stringWithFormat:@"loading0%d",i]];
        [rotoArr addObject: img];
    }
    self.LoadImage.animationImages = rotoArr;
    self.LoadImage.animationDuration = 1;
    self.LoadImage.animationRepeatCount = -1;
    [self.LoadImage startAnimating];
    
    self.RotoImage.animationImages = dataSource;
    self.RotoImage.animationDuration = 1;
    self.RotoImage.animationRepeatCount = -1;
    [self.RotoImage startAnimating];
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jidde)];
    [self addGestureRecognizer:tap];
}

+(instancetype)creatXIB
{
    return [[[NSBundle mainBundle]loadNibNamed:@"YYRotor" owner:nil options:nil]lastObject];
}
-(void)show
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
    } completion:nil];
}
-(void)close
{
    [self.RotoImage stopAnimating];
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            [self.RotoImage stopAnimating];
            [self.LoadImage stopAnimating];
            [self removeFromSuperview];
        }
    }];
}

-(void)jidde
{
    [self close];
}


@end
