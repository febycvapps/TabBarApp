//
//  firstpage.h
//  tabbar
//
//  Created by Feby Varghese on 7/16/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface firstpage : UIViewController
{
    NSIndexPath *index;
    IBOutlet UIImageView *pictureview;
    IBOutlet UITextView *description;
}

-(id)initwithIndexPath:(NSIndexPath *)indexpath;


@end
