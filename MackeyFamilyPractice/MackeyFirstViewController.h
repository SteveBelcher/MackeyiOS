//
//  MackeyFirstViewController.h
//  MackeyFamilyPractice
//
//  Created by Wendy Belcher on 11/16/11.
//  Copyright (c) 2011 ReliaLutions, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackeyFirstViewController : UIViewController <UIAlertViewDelegate> {
}

-(IBAction) psudoBackAction:(id)sender;

@property (nonatomic, retain) IBOutlet UIWebView *webViewCallMe;
@property (weak, nonatomic) IBOutlet UIButton *CallMe;
- (IBAction)showCallMe:(id)sender;

@property (nonatomic, retain) IBOutlet UIWebView *webViewEmailMe;
@property (weak, nonatomic) IBOutlet UIButton *EmailMe;
- (IBAction)showEmailMe:(id)sender;

@property (nonatomic, retain) IBOutlet UIWebView *webViewHealthConcerns;
@property (nonatomic, retain) IBOutlet UIView *viewHealthConcerns;
@property (weak, nonatomic) IBOutlet UIButton *HealthConcerns;
- (IBAction)showHealthConcerns:(id)sender;
//@property (weak, nonatomic) IBOutlet UITextField *textfield;

@property (nonatomic, retain) IBOutlet UIWebView *webViewSampleMenus;
@property (weak, nonatomic) IBOutlet UIButton *SampleMenus;
- (IBAction)showSampleMenus:(id)sender;

-(IBAction)handleSwipeFrom:(id)recognizer;

@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabels;
//@property (nonatomic, retain) IBOutlet UIView *webViewReadingLabelsInstruct;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsCalories;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsTotalFat;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsSatFat;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsCholesterol;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsSodium;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsCarbs;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsFiber;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsProtein;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsVitamins;
@property (nonatomic, retain) IBOutlet UIWebView *webViewReadingLabelsDaily;
@property (weak, nonatomic) IBOutlet UIButton *ReadingLabels;
- (IBAction)showReadingLabels:(id)sender;

@property (nonatomic, retain) IBOutlet UIWebView *webViewBMICalculator;
@property (weak, nonatomic) IBOutlet UIButton *BMICalculator;
- (IBAction)showBMICalculator:(id)sender;

@end
