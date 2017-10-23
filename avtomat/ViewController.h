//
//  ViewController.h
//  avtomat
//
//  Created by Влад Купряков on 23.10.17.
//  Copyright © 2017 Влад Купряков. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
-(NSMutableArray *)returnArr;
@end

