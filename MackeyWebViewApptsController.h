//
//  MackeyWebViewAppts.h
//  MackeyFamilyPractice
//
//  Created by Wendy Belcher on 1/18/12.
//  Copyright (c) 2012 ReliaLutions, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MackeyWebViewApptsController : UIViewController {
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) IBOutlet UIWebView *webViewFB;
@property (nonatomic, retain) IBOutlet UIWebView *webViewAppt;
@property (nonatomic, retain) IBOutlet UIWebView *webViewApptLg;
@property (nonatomic, retain) IBOutlet UIWebView *webViewLabs;
@property (nonatomic, retain) IBOutlet UIWebView *webViewLabsLg;
@property (nonatomic, retain) IBOutlet UIWebView *webViewCall;
@property (nonatomic, retain) IBOutlet UIWebView *webViewTips;
@property (nonatomic, retain) IBOutlet UIWebView *webViewEmail;
@property (nonatomic, retain) IBOutlet UIWebView *webViewTweet;
@property (nonatomic, retain) IBOutlet UIWebView *webViewBlog;
@property (nonatomic, retain) IBOutlet UIWebView *webViewVideo;
@property (nonatomic, retain) IBOutlet UIWebView *webViewSurvey;
@property (nonatomic, retain) IBOutlet UIWebView *webViewNews;

@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *webViewIndicator;

-(IBAction)handleSwipeFrom:(id)recognizer;

@end
