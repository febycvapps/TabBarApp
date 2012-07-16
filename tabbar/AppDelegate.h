//
//  AppDelegate.h
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
{
    UINavigationController *navigation1;
    UINavigationController *navigation2;

}

@property (nonatomic,retain) UINavigationController *navigation1;
@property (nonatomic,retain) UINavigationController *navigation2;
@property (nonatomic,strong) NSMutableArray *devices;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) UITabBarController *tabBarController;

@end
