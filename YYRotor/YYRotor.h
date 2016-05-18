//
//  YYRotor.h
//  YYRotor
//
//  Created by mac on 16/5/17.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYRotor : UIView

@property (weak, nonatomic) IBOutlet UIImageView *RotoImage;
@property (weak, nonatomic) IBOutlet UIView *YYView;
@property (weak, nonatomic) IBOutlet UIImageView *LoadImage;

+(instancetype)creatXIB;
-(void)show;
-(void)close;

@end
