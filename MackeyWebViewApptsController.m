//
//  MackeyWebViewAppts.m
//  MackeyFamilyPractice
//
//  Created by Wendy Belcher on 1/18/12.
//  Copyright (c) 2012 ReliaLutions, LLC. All rights reserved.
//

#import "MackeyWebViewApptsController.h"

@implementation MackeyWebViewApptsController
@synthesize webViewIndicator;
@synthesize webView,webViewFB,webViewAppt,webViewLabs,webViewCall,webViewTips,webViewEmail,webViewTweet,webViewBlog,webViewNews,webViewVideo,webViewSurvey,webViewLabsLg,webViewApptLg;

- (void)awakeFromNib {
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.mackeyfamilypractice.com"]]];
}

- (void)viewDidLoad {
    [super viewDidLoad]; //objWebView is the outlet of UIWebView
        
    //the more the delay the errors will be less so within 0.1-0.3 would be fine
    [self performSelector:@selector(loadURL:) withObject:nil afterDelay:0.1]; 
}

-(void)loadURL:(id)sender{
    
    if (webViewFB) {
        [webViewFB stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.facebook.com/pages/Mackey-Family-Practice/190251171000369"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewFB loadRequest:req];
    }
    else if (webViewAppt) {
        [webViewAppt stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.mackeyfamilypractice.com/appointmentApp.html"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewAppt loadRequest:req];
    }
    else if (webViewApptLg) {
        [webViewApptLg stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.mackeyfamilypractice.com/appointmentAppLg.html"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewApptLg loadRequest:req];
    }
    else if (webViewLabs) {
        [webViewLabs stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.mackeyfamilypractice.com/labsApp.html"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewLabs loadRequest:req];
    }
    else if (webViewLabsLg) {
        [webViewLabsLg stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.mackeyfamilypractice.com/labsAppLg.html"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewLabsLg loadRequest:req];
    }
    else if (webViewCall) {
        [webViewCall stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"tel:1-317-213-6767"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewCall loadRequest:req];        
    }
    else if (webViewEmail) {
        [webViewEmail stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"mailto:info@mackeyfamilypractice.com?bcc=support@mackeyfamilypractice.com&subject=ContactUs%20Email%20from%20App"];  
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewEmail loadRequest:req];
    }
    else if (webViewTweet) {
        [webViewTweet stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"https://twitter.com/MackeyFamPrac"];  
        //webViewTweet.scalesPageToFit = YES;
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewTweet loadRequest:req];
    }
    else if (webViewBlog) {
        [webViewBlog stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://mackeyfamilypractice.blogspot.com"];  
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewBlog loadRequest:req];
    }
    else if (webViewVideo) {
        [webViewVideo stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://youtu.be/EUuvTusJQhQ"];  
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewVideo loadRequest:req];
    }
    else if (webViewSurvey) {
        [webViewSurvey stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.surveymonkey.com/s.aspx?sm=angKvuWwg_2f_2ftIzVTNhQ8_2bw_3d_3d"];  
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewSurvey loadRequest:req];
    }
    else if (webViewNews) {
        [webViewNews stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.southcarolinablues.com/newsroom/2012newsreleases.aspx?article_id=288"];  
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webViewNews loadRequest:req];
    }
    else {
        [webView stopLoading]; //added this line to stop the previous request
        NSURL *url = [NSURL URLWithString:@"http://www.mackeyfamilypractice.com"];    
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        [webView loadRequest:req];
        }
    }

-(void)viewDidAppear:(BOOL)animated{
    NSLog (@"viewDidAppear");
    [webViewIndicator stopAnimating];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer {
    NSLog(@"Swipe received.");
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
