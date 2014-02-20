//
//  FixedAssetsViewController.h
//  ContainarVIewSample
//
//  Created by 古山 健司 on 2014/02/20.
//  Copyright (c) 2014年 古山 健司. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol FixedAssetsViewControllerDelegate
- (void)contaierViewButtonDidPush:(id)sender;
@end
@interface FixedAssetsViewController : UIViewController
@property (nonatomic) id<FixedAssetsViewControllerDelegate> delegate;
@end
