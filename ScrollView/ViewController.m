//
//  ViewController.m
//  ScrollView
//
//  Created by Thomas Alexanian on 2016-11-14.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import "ViewController.h"
#import "ZoomViewController.h"

@interface ViewController ()

@property UIImage *selectedImage;

@property UITapGestureRecognizer *tapRecog;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tapRecog = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.view addGestureRecognizer:self.tapRecog];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ZoomViewController *destVC = (ZoomViewController *)[segue destinationViewController] ;
    
    // Pass the selected object to the new view controller.
    
    destVC.selectedImage = self.selectedImage;
}



-(void)imageTapped:(UITapGestureRecognizer*)sender {
    CGPoint touchPoint = [sender locationInView:self.scrollView];
    if ([self.image1 pointInside:touchPoint withEvent:UIEventTypeTouches]) {
        self.selectedImage = [self.image1 image];
    } else if ([self.image2 pointInside:[self.scrollView convertPoint:touchPoint toView:self.image2] withEvent:UIEventTypeTouches]) {
        self.selectedImage = [self.image2 image];
    } else {
        self.selectedImage = [self.image3 image];
    }
    
    
    [self performSegueWithIdentifier:@"detailedSegue" sender:sender];
}

@end
