//
//  SecondViewController.m
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "SecondViewController.h"
#import "secondpage.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize nametext,phonetext;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @"Address Book";
}

-(IBAction)autohide:(id)sender
{
    [nametext resignFirstResponder];
    [phonetext resignFirstResponder];
}

-(IBAction)submit:(id)sender
{
    secondpage *sec = [[secondpage alloc]initWithNibName:@"secondpage" bundle:[NSBundle mainBundle]];
    if (self.nametext.text.length > 0 && self.phonetext.text.length > 0)
    {
        [self.navigationController pushViewController:sec animated:YES];
        sec.namelabel.text = self.nametext.text;
        sec.phonelabel.text = self.phonetext.text;
    }
    
    else if (self.nametext.text.length == 0 && self.phonetext.text.length > 0)
    {
        UIAlertView *popup = [[UIAlertView alloc]initWithTitle:@"Error !!!!" message:@"Enter Your Name to continue" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles : nil];
        [popup show];
        [popup release];
    }
    
    else if (self.nametext.text.length > 0 && self.phonetext.text.length == 0)
    {
        UIAlertView *popup = [[UIAlertView alloc]initWithTitle:@"Error !!!!" message:@"Enter Your Phone Number to continue" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles : nil];
        [popup show];
        [popup release];
    }
    
    else
    {
        UIAlertView *popup = [[UIAlertView alloc]initWithTitle:@"Error !!!!" message:@"Enter a value to continue" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles : nil];
        [popup show];
        [popup release];
    }
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
