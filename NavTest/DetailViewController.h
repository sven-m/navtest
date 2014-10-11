//
//  DetailViewController.h
//  NavTest
//
//  Created by Sven Meyer on 11/10/14.
//  Copyright (c) 2014 Sven Meyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

