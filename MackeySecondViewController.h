//
//  MackeySecondViewController.h
//  MackeyFamilyPractice
//
//  Created by Wendy Belcher on 11/16/11.
//  Copyright (c) 2011 ReliaLutions, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackeySecondViewController : UIViewController{
    IBOutlet UILabel *height;
    IBOutlet UILabel *heightInches;
    IBOutlet UILabel *weight;
    IBOutlet UILabel *bmi;
    IBOutlet UILabel *result;
}
- (IBAction)heightFeet:(id)sender;
- (IBAction)heightInch:(id)sender;
- (IBAction)weightPounds:(id)sender;
- (void)updateResults;
- (IBAction)dismissKeyboard:(id)sender;
- (NSString *) range:(float)bmiVal;

@end
