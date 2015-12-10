//
//  ViewController2.m
//  DemoPushViewObj
//
//  Created by Vien Vu  on 12/10/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()


@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)back1Go3:(id)sender {
    [self.navigationController popViewControllerAnimated:NO];
    [self.delegate dismissAndPushView3:self.navigationController];
}
- (IBAction)goStraight3:(id)sender {
    [self performSegueWithIdentifier:@"Go2To3" sender:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Go2To3"]) {
        ViewController3 *controler = (ViewController3 *)segue.destinationViewController;
        controler.backToRoot = YES;
    }
}

@end
