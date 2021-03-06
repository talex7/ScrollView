//
//  ViewController.h
//  ScrollView
//
//  Created by Thomas Alexanian on 2016-11-14.
//  Copyright © 2016 Thomas Alexanian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

-(void)imageTapped:(UITapGestureRecognizer*)sender;

@end

