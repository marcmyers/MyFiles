//
//  MyFilesViewController.m
//  MyFiles
//
//  Created by Marc A Myers on 10/25/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import "MyFilesViewController.h"

@interface MyFilesViewController ()

@end

@implementation MyFilesViewController
@synthesize WebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

/*
Commented out because it causes the build to fail, strange errors
- (void)dealloc {
    [WebView release];
    [super dealloc];
    
}
*/

// Method Definitions for the local pdf buttons
- (IBAction)btnLocal01:(id)sender {
    [self loadlocalFile01];
    
}


- (IBAction)btnLocal02:(id)sender {
    [self loadlocalFile02];
    
}

- (IBAction)btnLocal03:(id)sender {
    [self loadlocalFile03];
    
}


// Method Definitions for the web pdf buttons
- (IBAction)btnWeb01:(id)sender {
    [self loadexternalFile01];
    
}

- (IBAction)btnWeb02:(id)sender {
    [self loadexternalFile02];
    
}

- (IBAction)btnWeb03:(id)sender {
    [self loadexternalFile03];
    
}

// Selectors for loading the local files
- (void)loadlocalFile01
{
    //load file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Minecraft Overview" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    
    //set screensize
    CGSize size = [self getScreenSize];
    UIWebView *webView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 50, size.width, size.height-100)];
    [[webView scrollView] setContentOffset:CGPointMake(0,size.height) animated:YES];
    
    //scroll 0 left pixel, 50 top pixel
    [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [webView loadRequest:request];
    
    //load file into webview
    [self.view addSubview:webView];
    
/*   [webView release];
     Commented out because it causes the build to fail, two errors:
     1.) 'release' is unavailable: not available in automatic reference counting mode
     2.) ARC forbids explicit message send of 'release'
*/

}

- (void)loadlocalFile02
{
    //load file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Minecraft Controls" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    
    //set screensize
    CGSize size = [self getScreenSize];
    UIWebView *webView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 50, size.width, size.height-100)];
    [[webView scrollView] setContentOffset:CGPointMake(0,size.height) animated:YES];
    
    //scroll 0 left pixel, 50 top pixel
    [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [webView loadRequest:request];
    
    //load file into webview
    [self.view addSubview:webView];
    
/*   [webView release];
    Commented out because it causes the build to fail, two errors:
    1.) 'release' is unavailable: not available in automatic reference counting mode
    2.) ARC forbids explicit message send of 'release'
*/
    
}

- (void)loadlocalFile03
{
    //load file
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Minecraft Basics" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    
    //set screensize
    CGSize size = [self getScreenSize];
    UIWebView *webView=[[UIWebView alloc] initWithFrame:CGRectMake(0, 50, size.width, size.height-100)];
    [[webView scrollView] setContentOffset:CGPointMake(0,size.height) animated:YES];
    
    //scroll 0 left pixel, 50 top pixel
    [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"window.scrollTo(0.0, 50.0)"]];
    [webView loadRequest:request];
    
    //load file into webview
    [self.view addSubview:webView];
    
/*   [webView release];
     Commented out because it causes the build to fail, two errors:
     1.) 'release' is unavailable: not available in automatic reference counting mode
     2.) ARC forbids explicit message send of 'release'
*/
    
}

// Selectors for loading the external/web files
- (void)loadexternalFile01
{
    // Checks to see if the device is connected to internet before attempting to load the external URL
    if([self checkinternet] == NO)
    {
        // Not connected to the internet
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Internet Connection Required"
                                                          message:@"Close app and return when internet connection available."
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
        [message show];
    }
    else
    {

    
    //get screen size
    CGSize size = [self getScreenSize];
    
    //set size
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, size.width, size.height-100)];
    
    NSURL *targetURL = [NSURL URLWithString:@"http://www.hippasus.com/resources/wccc2011/Puentedura_FreePlaySandboxesGames.pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
    
    //load file in to webview
    [self.view addSubview:webView];
    
        /*   [webView release];
         Commented out because it causes the build to fail, two errors:
         1.) 'release' is unavailable: not available in automatic reference counting mode
         2.) ARC forbids explicit message send of 'release'
         */
    }
    
}

- (void)loadexternalFile02
{
    // Checks to see if the device is connected to internet before attempting to load the external URL
    if([self checkinternet] == NO)
    {
        // Not connected to the internet
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Internet Connection Required"
                                                          message:@"Close app and return when internet connection available."
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
        [message show];
    }
    else
    {
        
        
        //get screen size
        CGSize size = [self getScreenSize];
        
        //set size
        UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, size.width, size.height-100)];
        
        NSURL *targetURL = [NSURL URLWithString:@"http://www.cord.org/uploadedfiles/NCPN09P_Hatcher_handout2.pdf"];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webView loadRequest:request];
        
        //load file in to webview
        [self.view addSubview:webView];
        
        /*   [webView release];
         Commented out because it causes the build to fail, two errors:
         1.) 'release' is unavailable: not available in automatic reference counting mode
         2.) ARC forbids explicit message send of 'release'
         */
    }
    
}

- (void)loadexternalFile03
{
    // Checks to see if the device is connected to internet before attempting to load the external URL
    if([self checkinternet] == NO)
    {
        // Not connected to the internet
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Internet Connection Required"
                                                          message:@"Close app and return when internet connection available."
                                                         delegate:nil
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:nil];
        [message show];
    }
    else
    {
        
        
        //get screen size
        CGSize size = [self getScreenSize];
        
        //set size
        UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 50, size.width, size.height-100)];
        
        NSURL *targetURL = [NSURL URLWithString:@"http://graphics.cs.williams.edu/papers/MentalGamesSandbox07/map-Sandbox07.pdf"];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [webView loadRequest:request];
        
        //load file in to webview
        [self.view addSubview:webView];
        
        /*   [webView release];
         Commented out because it causes the build to fail, two errors:
         1.) 'release' is unavailable: not available in automatic reference counting mode
         2.) ARC forbids explicit message send of 'release'
         */
    }
    
}

- (CGSize)getScreenSize
{
    //Get Screen size
    CGSize size;
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height > [[UIScreen mainScreen] bounds].size.width) {
        // in Landscape mode, width always higher than height
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height < [[UIScreen mainScreen] bounds].size.width) {
        // in Portrait mode, height always higher than width
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else {
        // otherwise it is normal
        size.height = [[UIScreen mainScreen] bounds].size.height;
        size.width = [[UIScreen mainScreen] bounds].size.width;
    }
    return size;
}

- (BOOL) checkinternet
{
    //check internet connection
    NSURL *scriptUrl = [NSURL URLWithString:@"http://www.google.com/m"];
    NSData *data = [NSData dataWithContentsOfURL:scriptUrl];
    
    if (data)
    {
        NSLog(@"Device is connected to the internet");
        return YES;
        
    }
    else
    {
        NSLog(@"Device is not connected to the internet");
        return NO;
        
    }
    
}

@end
