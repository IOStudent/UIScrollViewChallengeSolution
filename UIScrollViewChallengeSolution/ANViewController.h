//
//  ANViewController.h
//  UIScrollViewChallengeSolution
//
//  Created by Anca Negrean on 3/3/14.
//  Copyright (c) 2014 Radu Negrean. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANViewController : UIViewController < UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic)UIImageView *globalImageView; 

@end
