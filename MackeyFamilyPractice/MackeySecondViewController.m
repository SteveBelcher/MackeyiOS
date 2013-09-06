//
//  MackeySecondViewController.m
//  MackeyFamilyPractice
//
//  Created by Wendy Belcher on 11/16/11.
//  Copyright (c) 2011 ReliaLutions, LLC. All rights reserved.
//

#import "MackeySecondViewController.h"

@implementation MackeySecondViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    bmi.text=@"0.0";
    weight.text=@"0";	
    height.text=@"0";	
    heightInches.text=@"0";
}

- (IBAction)heightFeet:(id)sender {
    UITextField *hFeet = (UITextField*) sender;
    NSLog(@"In heightFeet, num is %@", hFeet.text);	
	height.text = hFeet.text;
	[self updateResults];
}

- (IBAction)heightInch:(id)sender {
    NSLog (@"Updating Inches");
    UITextField *hInch = (UITextField*) sender;
    NSLog(@"In heightInch, num is %@", hInch.text);	
    heightInches.text = hInch.text;
	[self updateResults];
}

- (IBAction)weightPounds:(id)sender {
    NSLog (@"Updating Pounds");
    UITextField *wPounds = (UITextField*) sender;
    NSLog(@"In weightPounds, num is %@", wPounds.text);	
	weight.text = wPounds.text;
	[self updateResults];
}

- (void)updateResults{
    //NSLog(@"In updateResults, weight is %@", weight.text);	
    //NSLog(@"In updateResults, height is %@", height.text);	
    //NSLog(@"In updateResults, height inches is %@", heightInches.text);	
    bmi.text=@"0.0";
    float h = (12*[height.text floatValue]) + [heightInches.text floatValue];
    //NSLog(@"The value of height num is %.2f", h);	
    float w = [weight.text floatValue];
    //NSLog(@"The value of weight num is %.2f", w);	
	//metric float bmiVal = w / ((h/100)*(h/100));
	float bmiVal = ((w * 703 * 10) / h /h ) / 10;
	NSString *bmiResult = [[NSString alloc]initWithFormat:@"%.1f", bmiVal];
	bmi.text = bmiResult;
	result.text = [self range:bmiVal];
    bmi.textColor = [UIColor redColor];
    bmi.textColor = [self colorText:bmiVal];

}

- (IBAction)dismissKeyboard:(id)sender {
    [[self view] endEditing:YES];
}

- (UIColor *) colorText:(float)bmiVal{
    UIColor *theColor;
                         
    if(bmiVal <= 12.0){
        theColor = [UIColor blackColor];
    }else if (bmiVal<20.1) {
        theColor = [UIColor blackColor];
    }else if (bmiVal<25.1) {
        theColor = [UIColor colorWithRed:0.15 green:0.55 blue:0.15 alpha:1];
    }else if (bmiVal<30.1) {
        theColor = [UIColor colorWithRed:1 green:0.9 blue:0 alpha:1];
    }else if (bmiVal<36) {
        theColor = [UIColor redColor];
    }else {
        theColor = [UIColor redColor];
    }
    return theColor;
}
                     
- (NSString *) range:(float)bmiVal{
    NSString *theRange;
	
	if(bmiVal <= 12.0){
		theRange = @"";
	}else if (bmiVal<20.1) {
		theRange = @"This range is considered Underweight";
	}else if (bmiVal<25.1) {
		theRange = @"This range is considered Normal";
	}else if (bmiVal<30.1) {
		theRange = @"This range is considered Overweight";
	}else if (bmiVal<36) {
		theRange = @"This range is considered Obese";
	}else {
		theRange = @"This range is considered Severly Obese";
	}
	return theRange;
}

- (void)viewDidUnload
{
    height = nil;
    heightInches = nil;
    weight = nil;
    bmi = nil;
    result = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    //Return YES for supported orientations for both iPhone and iPad
    if (([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) || ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) ) {
        return ((interfaceOrientation != UIInterfaceOrientationLandscapeRight) && (interfaceOrientation != UIInterfaceOrientationLandscapeLeft));
    } else {
        return YES;
    }
}

@end
