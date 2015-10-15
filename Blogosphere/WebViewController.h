//
//  WebViewController.h
//  Blogosphere
//
//  Created by Cotten Blackwell on 10/15/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController

@property (strong, nonatomic) NSURL *blogPostURL;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end


