//
//  RoadPriceViewController.h
//  ContainarVIewSample
//
//  Created by 古山 健司 on 2014/02/20.
//  Copyright (c) 2014年 古山 健司. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RoadPriceViewControllerDelegate
- (void)roadPriceContaierViewButtonDidPush:(id)sender;
@end
@interface RoadPriceViewController : UIViewController
@property (nonatomic) id<RoadPriceViewControllerDelegate> delegate;
@end
