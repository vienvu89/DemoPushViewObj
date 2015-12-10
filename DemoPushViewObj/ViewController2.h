//
//  ViewController2.h
//  DemoPushViewObj
//
//  Created by Vien Vu  on 12/10/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewController2Delegate <NSObject>

- (void)dismissAndPushView3:(UINavigationController *)controller;

@end

@interface ViewController2 : UIViewController

@property (weak, nonatomic) id<ViewController2Delegate>delegate;

@end
