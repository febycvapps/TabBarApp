//
//  AppDelegate.m
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "AppDelegate.h"

#import "FirstViewController.h"

#import "SecondViewController.h"

#import "firstobjects.h"

@implementation AppDelegate

@synthesize navigation1,navigation2;
@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize devices = _devices;


- (void)dealloc
{
    [_window release];
    [_tabBarController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    
    firstobjects *iPod = [[firstobjects alloc]init];
    iPod.devicename = @"Apple iPod Touch";
    iPod.devicedetails = @"iPod is a line of portable media players created and marketed by Apple Inc.. The product line-up consists of the hard drive-based iPod classic, the touchscreen iPod touch, the compact iPod nano and the ultra-compact iPod shuffle. iPod classic models store media on an internal hard drive, while all other models use flash memory to enable their smaller size (the discontinued mini used a Microdrive miniature hard drive). As with many other digital music players, iPods can serve as external data storage devices. Storage capacity varies by model, ranging from 2 GB for the iPod shuffle to 160 GB for the iPod classic. The iPod line was announced by Apple on October 23, 2001, and released on November 10, 2001";
    iPod.devicepicture = [UIImage imageNamed: @"ipod.png"];
    
    firstobjects *iPhone = [[firstobjects alloc]init];
    iPhone.devicename = @"Apple iPhone";
    iPhone.devicedetails = @"The iPhone is a line of smartphones designed and marketed by Apple Inc. The first iPhone was unveiled by Steve Jobs, then CEO of Apple, on January 9, 2007, and released on June 29, 2007. The 5th generation iPhone, the iPhone 4S, was announced on October 4, 2011, and released 10 days later.Third-party as well as Apple application software is available from the App Store, which launched in mid-2008, and as of 2010, has over 500,000 apps approved by Apple. These apps have diverse functions, including games, reference, GPS navigation, social networking, security, and advertising for television shows, films, and celebrities.There are five generations of iPhone models, each accompanied by one of the five major releases of iOS (formerly iPhone OS). The original iPhone was a GSM phone, and established design precedents, such as screen size and button placement, that have persisted through all models.";
    iPhone.devicepicture = [UIImage imageNamed: @"iphone.jpeg"];
    
    firstobjects *iPad = [[firstobjects alloc]init];
    iPad.devicename = @"Apple iPad";
    iPad.devicedetails = @"The iPad is a line of tablet computers designed and marketed by Apple Inc., primarily as a platform for audio-visual media including books, periodicals, movies, music, games, apps and web content. Its size and weight fall between those of contemporary smartphones and laptop computers. The iPad runs on iOS, the same operating system used on Apple's iPod Touch and iPhone, and can run its own applications as well as iPhone applications. Without modification or a developer certificate, the iPad will only run programs approved by Apple and distributed via the Apple App Store (with the exception of programs that run inside the iPad's web browser).Like iPhone and iPod Touch, the iPad is controlled by a multitouch display—a departure from most previous tablet computers, which used a pressure-triggered stylus—as well as a virtual onscreen keyboard in lieu of a physical keyboard.";
    iPad.devicepicture = [UIImage imageNamed: @"ipad.jpeg"];
    
    self.devices = [[NSMutableArray alloc]initWithObjects:iPod, iPhone, iPad, nil ];
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launcher.
    
   UIViewController *viewController1 = [[[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil] autorelease];
    UIViewController *viewController2 = [[[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil] autorelease];
    
    self.navigation1 = [[UINavigationController alloc]initWithRootViewController:viewController1];
    self.navigation1.navigationBar.barStyle = UIBarStyleBlack;
    
    self.navigation2 = [[UINavigationController alloc]initWithRootViewController:viewController2];
    self.navigation2.navigationBar.barStyle = UIBarStyleBlack;
    
    self.tabBarController = [[[UITabBarController alloc] init] autorelease];
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:self.navigation1, self.navigation2, nil];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed
{
}
*/

@end
