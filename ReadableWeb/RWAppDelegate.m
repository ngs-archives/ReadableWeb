//
//  RWAppDelegate.m
//  ReadableWeb
//
//  Created by Atsushi Nagase on 12/28/12.
//  Copyright (c) 2012 LittleApps Inc. All rights reserved.
//

#import "RWAppDelegate.h"
#import "NSString+readable.h"
#import "FoundationNamedAdditions.h"

@implementation RWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  NSString *html = [NSString stringNamed:@"web.html"];
  NSLog(@"%@", [html stringByReadableWithBaseURL:[NSURL URLWithString:@"http://example.tld/path/to/content.html"] options:READABLE_OPTIONS_DEFAULT]);
  return YES;
}

@end
