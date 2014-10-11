//
//  DetailViewController.m
//  NavTest
//
//  Created by Sven Meyer on 11/10/14.
//  Copyright (c) 2014 Sven Meyer. All rights reserved.
//

#import "MiddleViewController.h"
#import "ChildViewController.h"

@interface MiddleViewController ()

- (IBAction)superDetailButtonPressed:(id)sender;

@end

@implementation MiddleViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)superDetailButtonPressed:(id)sender {
    NSLog(@"scheduling push...");
    UINavigationController *navController = self.navigationController;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIStoryboard*  sb = [UIStoryboard storyboardWithName:@"Main"
                                                      bundle:nil];
        UIViewController* vc = [sb instantiateViewControllerWithIdentifier:@"SuperDetailViewController"];
                NSLog(@"pushing... %@ onto navcontroller %@", vc, navController);
        [navController pushViewController:vc animated:YES];
        NSLog(@"just pushed");
    });
}
@end
