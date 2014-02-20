//
//  FixedAssetsViewController.m
//  ContainarVIewSample
//
//  Created by 古山 健司 on 2014/02/20.
//  Copyright (c) 2014年 古山 健司. All rights reserved.
//

#import "FixedAssetsViewController.h"

@interface FixedAssetsViewController ()

@end

@implementation FixedAssetsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonDidPush:(id)sender
{
    [self.delegate contaierViewButtonDidPush:sender];
}

@end
