//
//  TableViewController.m
//  avtomat
//
//  Created by Влад Купряков on 23.10.17.
//  Copyright © 2017 Влад Купряков. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"
@import UIKit;
@interface TableViewController ()

@end

@implementation TableViewController
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    ViewController* contr = [[ViewController alloc]init];
    NSMutableArray *array = [[NSMutableArray alloc]initWithArray:[contr returnArr]];
    cell.textLabel.text = array[indexPath.row];
    return  cell;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    ViewController* contr = [[ViewController alloc]init];
    NSMutableArray *array = [[NSMutableArray alloc]initWithArray:[contr returnArr]];
    return array.count;
}
@end

