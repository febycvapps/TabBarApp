//
//  SecondViewController.h
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondpage.h"

@interface SecondViewController : UIViewController
{
    IBOutlet UITextField *nametext;
    IBOutlet UITextField *phonetext;
}

@property(nonatomic,retain)IBOutlet UITextField *nametext;
@property(nonatomic,retain)IBOutlet UITextField *phonetext;

-(IBAction)submit:(id)sender;
-(IBAction)autohide:(id)sender;

@end
