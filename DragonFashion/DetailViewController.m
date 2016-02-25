//
//  DetailViewController.m
//  DragonFashion
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "DetailViewController.h"
#import "Dragon.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dragonLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dragonLabel.sizeToFit;
    
    self.dragonLabel.text = self.dragon.swag;
}

@end
