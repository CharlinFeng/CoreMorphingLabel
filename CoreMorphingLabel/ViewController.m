//
//  ViewController.m
//  CoreMorphingLabel
//
//  Created by 冯成林 on 15/5/22.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreMorphingLabel.h"

@interface ViewController ()

@property (nonatomic,weak) TOMSMorphingLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CoreMorphingLabel *label = [[CoreMorphingLabel alloc] initWithFrame:CGRectMake(100, 100, 200,100)];
    
    label.layer.borderColor = [UIColor lightGrayColor].CGColor;
    label.layer.borderWidth = .5f;
    label.characterShrinkFactor =20;
    _label = label;
    
    [self.view addSubview:label];
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    NSArray *strings=@[@"我是文字",@"就我一个",@"最后的我",@"我的好文章"];

    NSUInteger index = arc4random_uniform(strings.count);
    NSString *ramdomString = strings[index];
    _label.text = ramdomString;
}



@end
