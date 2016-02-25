//
//  ViewController.m
//  DragonFashion
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "ViewController.h"
#import "Dragon.h"
#import "DetailViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSArray *dragons;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //revised arraay based on the super init defined in the Dragon.m file
    Dragon *dragonOne = [[Dragon alloc]initWithFullName:@"Smaug" andSwag:@"Ill-gotten gold"];
    Dragon *dragonTwo = [[Dragon alloc]initWithFullName:@"Trogdor" andSwag:@"Thatched roof cottages"];
    Dragon *dragonThree = [[Dragon alloc]initWithFullName:@"Spyro" andSwag:@"Dragonfly"];
    Dragon *dragonFour = [[Dragon alloc]initWithFullName:@"Puff" andSwag:@"Magic wand"];

//    dragonOne.fullName = @"Smaug";
//    dragonTwo.fullName = @"Trogdor";
//    dragonThree.fullName = @"Spyro";
//    dragonFour.fullName = @"Puff";
//    
//    dragonOne.swag = @"Ill-gotten gold.";
//    dragonTwo.swag = @"Thatched roof cottages.";
//    dragonThree.swag = @"Dragonfly.";
//    dragonFour.swag = @"Magic wand.";
    
    self.dragons = [NSArray arrayWithObjects:dragonOne, dragonTwo, dragonThree, dragonFour, nil];
    
    for (Dragon *dragon in self.dragons) {
        NSLog(dragon.description);
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dragons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    cell.textLabel.text = dragon.fullName;
    cell.detailTextLabel.text = dragon.swag;
    return  cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DetailViewController *dvc = segue.destinationViewController;
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    dvc.title = [[self.dragons objectAtIndex:indexPath.row]fullName];
    Dragon *dragon = [self.dragons objectAtIndex:indexPath.row];
    dvc.dragon = dragon;
    
}

@end
