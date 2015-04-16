//
//  ViewController.m
//  ProgramableViews
//
//  Created by Daniel Goncalves on 2015-04-15.
//  Copyright (c) 2015 Daniel J Goncalves. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blueColor];
    // Creating a Button
    UIButton *buttonOne = [UIButton buttonWithType:UIButtonTypeRoundedRect]; //initWithFrame:CGRectMake(100, 100, 100, 44)];
    // Position the Button : @ x = 100, y = 100, w = 100, h = 44
    buttonOne.frame = CGRectMake(100, 100, 100, 44); // Replace into one line
    NSLog(@"Button dimensions: x = %f, y = %f, w = %f, h = %f", buttonOne.frame.origin.x, buttonOne.frame.origin.y, buttonOne.frame.size.width, buttonOne.frame.size.height);
    // Set the Button Title.
    [buttonOne setTitle:@"Click Me" forState:UIControlStateNormal];
    //Extra Button Appearance Settings
    // buttonOne.backgroundColor = [UIColor whiteColor];
    
    // Add the button on top of the view
    [self.view addSubview:buttonOne];
    
    // Add a UILabel and set its position
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(50, 30, 200, 44)];
    label1.text = @"Hello, from bitmaker labs.";
    // Add the label to the subview
    [self.view addSubview:label1];
    
    // Connect the button to our button pressed
    [buttonOne addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)buttonPressed:(UIButton *)sender {
    NSLog(@"Message from Button");
    
}

-(void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc]initWithFrame:viewRect];
    self.view = view;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"Touched From ViewController");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
