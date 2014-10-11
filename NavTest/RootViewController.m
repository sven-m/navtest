//
//  MasterViewController.m
//  NavTest
//
//  Created by Sven Meyer on 11/10/14.
//  Copyright (c) 2014 Sven Meyer. All rights reserved.
//

#import "RootViewController.h"
#import "MiddleViewController.h"

@interface RootViewController ()
- (IBAction)buttonPressed:(id)sender;

@end

@implementation RootViewController


- (IBAction)buttonPressed:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    id vc = [storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
