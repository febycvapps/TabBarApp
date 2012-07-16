//
//  FirstViewController.h
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
{
    NSMutableArray *devices;
}

@property (nonatomic, retain) IBOutlet UITableView *tableview;

@end
