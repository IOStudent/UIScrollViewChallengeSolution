//
//  ANViewController.m
//  UIScrollViewChallengeSolution
//
//  Created by Anca Negrean on 3/3/14.
//  Copyright (c) 2014 Radu Negrean. All rights reserved.
//

#import "ANViewController.h"

@interface ANViewController ()

@end

@implementation ANViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.globalImageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"worldMap.jpeg"]];
    
    //my note: the size of the content(image) in scrollview
    
    self.scrollView.contentSize=self.globalImageView.frame.size;
    
    //my note: adding the image(subview) to the scrollView
    [self.scrollView addSubview:self.globalImageView];
    
    self.scrollView.delegate =self;
    self.scrollView.maximumZoomScale = 2.0;
    self.scrollView.minimumZoomScale = 0.5;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.globalImageView;
}
@end
