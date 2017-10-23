//
//  ViewController.m
//  avtomat
//
//  Created by Влад Купряков on 23.10.17.
//  Copyright © 2017 Влад Купряков. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

NSMutableArray *ar;
- (void)viewDidLoad {
    [super viewDidLoad];
    ar =[[NSMutableArray alloc]init];
}


-(NSArray*)takeStr
{
    NSString *str0 = [[NSString alloc] initWithString:_textView.text];
    str0 = [str0 lowercaseString];
    NSMutableString *str = [[NSMutableString alloc] initWithString:str0];
    NSArray *arr = [[NSMutableArray alloc]init];
    for (int i=1;i<str.length;i+=2){
        [str insertString:@" " atIndex:i];
    }
    arr = [str componentsSeparatedByString:@" "];
    return arr;
}
-(void)findWhatYouNeed
{
    NSMutableArray *arr = [[NSMutableArray alloc]initWithArray:[self takeStr]];
    int a=0;
    int b=0;
    int i=0;
    int len = arr.count;
    while (i<len)
    {
        if (i==len)
        {
            break;
        }
        NSMutableString *str = [[NSMutableString alloc] init];
        while ([arr[i]  isEqual: @"a"])
        {
            i+=1;
            a+=1;
            [str insertString:@"a" atIndex:str.length];
            if (i==len)
            {
                break;
            }
        }
        if (i==len)
        {
            break;
        }
        while ([arr[i]  isEqual: @"b"])
        {
            i+=1;
            b+=1;
            [str insertString:@"b" atIndex:str.length];
            if (i==len)
            {
                break;
            }
        }
        if (((a%2)==0)&&(b==1)&&(a!=0))
        {
            [ar addObject:str];
        }
        else if(((a%2)!=0)&&(b==2))
        {
            [ar addObject:str];
        }
            a=0;
            b=0;
       }
    }

- (IBAction)compile:(UIButton *)sender {
    [self findWhatYouNeed];
}

- (IBAction)clear:(UIButton *)sender {
    _textView.text = @"";
    [ar removeAllObjects];
}

-(NSMutableArray*)returnArr
{
    return ar;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
