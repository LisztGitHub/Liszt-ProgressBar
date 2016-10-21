//
//  ViewController.m
//  ProgressBarDemo
//
//  Created by Liszt on 16/10/21.
//  Copyright © 2016年 https://github.com/LisztGitHub. All rights reserved.
//

#import "ViewController.h"
#import "ProgressBar.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
/** 进度*/
@property (strong, nonatomic) ProgressBar *pro;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _pro = [[ProgressBar alloc]initWithFrame:CGRectMake(0, 120, CGRectGetWidth(self.view.bounds), 10)];
    _pro.progressValue = 0.3;
    _pro.bufferProgressValue = 0.5;
    _pro.bgColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.2f];
    _pro.progressColor = [UIColor orangeColor];
    _pro.bufferColor = [UIColor lightGrayColor];
    [self.view addSubview:_pro];
    
    self.lable.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.lable.layer.shadowOpacity = 0.9f;
    self.lable.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.lable.layer.shadowRadius = 2.0f;
    self.lable.backgroundColor = [UIColor whiteColor];
    
    self.titleLabel.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    self.titleLabel.layer.shadowOpacity = 0.9f;
    self.titleLabel.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    self.titleLabel.layer.shadowRadius = 2.0f;
    self.titleLabel.backgroundColor = [UIColor whiteColor];
}

- (IBAction)slideValue:(id)sender {
    UISlider *tempSlider = sender;
    if(tempSlider.tag==10){
        _pro.progressValue = tempSlider.value;
    }
    else{
        _pro.bufferProgressValue = tempSlider.value;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
