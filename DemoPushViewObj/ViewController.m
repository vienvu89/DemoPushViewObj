//
//  ViewController.m
//  DemoPushViewObj
//
//  Created by Vien Vu  on 12/10/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()<ViewController2Delegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToScreen2:(id)sender {
    [self performSegueWithIdentifier:@"Go2" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Go2"]) {
        ViewController2 *controller = (ViewController2 *)segue.destinationViewController;
        controller.delegate = self;
    }
}


- (void)dismissAndPushView3:(UIViewController *)controller {
    [controller dismissViewControllerAnimated:YES completion:^{
        [self performSegueWithIdentifier:@"Go3" sender:nil];
    }];
}

@end
