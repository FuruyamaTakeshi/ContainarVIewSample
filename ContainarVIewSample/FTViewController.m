//
//  FTViewController.m
//  ContainarVIewSample
//
//  Created by 古山 健司 on 2014/02/19.
//  Copyright (c) 2014年 古山 健司. All rights reserved.
//

#import "FTViewController.h"

#import "RoadPriceViewController.h"
#import "FixedAssetsViewController.h"
@interface FTViewController () <RoadPriceViewControllerDelegate, FixedAssetsViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UIView *roadPriceContainerView;

@property (strong, nonatomic) IBOutlet UIView *fixedAssetsContainerView;

@property (nonatomic) UIViewController *selectedViewController;

@end

@implementation FTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)baseButtonDidPush:(id)sender
{
    [self.view bringSubviewToFront:self.roadPriceContainerView];
    self.roadPriceContainerView.hidden = !self.roadPriceContainerView .hidden;
    NSLog(@"%d", self.roadPriceContainerView.hidden);
}

- (void)contaierViewButtonDidPush:(id)sender
{
    UIView *fromView = self.fixedAssetsContainerView;
    UIView *toView = self.roadPriceContainerView;
    [UIView transitionFromView:fromView toView:toView duration:1 options:UIViewAnimationOptionTransitionFlipFromRight completion:^(BOOL finished){
        /* do something on animation completion */
        [fromView removeFromSuperview];
	}];
    self.selectedViewController = [self.childViewControllers objectAtIndex:1];
    [self.view addSubview:self.selectedViewController.view];
}

- (void)roadPriceContaierViewButtonDidPush:(id)sender
{
    UIView *fromView = self.roadPriceContainerView;
    UIView *toView = self.fixedAssetsContainerView;
    
    [UIView transitionFromView:fromView toView:toView duration:1 options:UIViewAnimationOptionTransitionFlipFromRight completion:^(BOOL finished){
        /* do something on animation completion */
        [fromView removeFromSuperview];
	}];
    
    self.selectedViewController = [self.childViewControllers objectAtIndex:0];
    [self.view addSubview:self.selectedViewController.view];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"FixedAssetsViewController"]) {
        FixedAssetsViewController *controller = (FixedAssetsViewController *)segue.destinationViewController;
        controller.delegate = self;
        controller.modalPresentationStyle = UIModalTransitionStyleCoverVertical;
    }
    if ([segue.identifier isEqualToString:@"RoadPriceViewController"]) {
        RoadPriceViewController *controller = (RoadPriceViewController *)segue.destinationViewController;
        controller.delegate = self;
        controller.modalPresentationStyle = UIModalPresentationCustom;
    }

}
@end
