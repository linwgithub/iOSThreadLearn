//
//  ViewController.m
//  ThreadDemo
//
//  Created by pollysoft on 16/3/1.
//  Copyright (c) 2016年 microi. All rights reserved.
//

#import "ViewController.h"
#import "ThreadToolByNSThread.m"
#import "ThreadByNSOperation.m"
#import "ThreadByGCDTool.m"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnNsThread:(id)sender {
    ThreadToolByNSThread *nsthreadtool = [[ThreadToolByNSThread alloc]init];
//    nsthreadtool 
    
}

- (IBAction)brnGCD:(id)sender {
    ThreadByGCDTool *gcdtool = [[ThreadByGCDTool alloc]init];

}

- (IBAction)btnNSOperation:(id)sender {
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
}

@end
