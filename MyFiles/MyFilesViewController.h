//
//  MyFilesViewController.h
//  MyFiles
//
//  Created by Marc A Myers on 10/25/13.
//  Copyright (c) 2013 RVC Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyFilesViewController : UIViewController
@property (retain, nonatomic) IBOutlet UIView *WebView;

- (IBAction)btnLocal01:(id)sender;
- (IBAction)btnLocal02:(id)sender;
- (IBAction)btnLocal03:(id)sender;

- (IBAction)btnWeb01:(id)sender;
- (IBAction)btnWeb02:(id)sender;
- (IBAction)btnWeb03:(id)sender;


@end
