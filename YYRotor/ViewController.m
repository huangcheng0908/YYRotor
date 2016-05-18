//
//  ViewController.m
//  YYRotor
//
//  Created by mac on 16/5/17.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import "ViewController.h"
#import "YYRotor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)ag:(id)sender
{
    YYRotor * rotor = [YYRotor creatXIB];
    [rotor show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
