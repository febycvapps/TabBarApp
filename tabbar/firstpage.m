//
//  firstpage.m
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "firstpage.h"
#import "firstobjects.h"
#import "AppDelegate.h"
#import "FirstViewController.h"

@interface firstpage ()

@end

@implementation firstpage

-(id)initwithIndexPath:(NSIndexPath *)indexpath;
{
    if (self = [super init])
    {
        index = indexpath;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    firstobjects *thisdevice = [delegate.devices objectAtIndex:index.row];
    self.title = thisdevice.devicename;
    description.text = thisdevice.devicedetails;
    description.editable = NO;
    pictureview.image = thisdevice.devicepicture;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
