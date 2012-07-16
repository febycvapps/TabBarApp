//
//  FirstViewController.m
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"
#import "firstobjects.h"
#import "firstpage.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize tableview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @ "iOS Devices";
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    devices = delegate.devices;
}

#pragma mark - Table View data Source

-(NSInteger)numberOfSectionsInTableView : (UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [devices count];
}

-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]autorelease];
    }
    
    firstobjects *thisdevice = [devices objectAtIndex:indexPath.row];
    cell.textLabel.text = thisdevice.devicename;
    cell.imageView.image = thisdevice.devicepicture;
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}


-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    firstpage *device = [[firstpage alloc]initwithIndexPath:indexPath];
    [delegate.navigation pushViewController:device animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

-(void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    firstpage *device = [[firstpage alloc]initwithIndexPath:indexPath];
    [delegate.navigation pushViewController:device animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
