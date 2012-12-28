//
//  NSString+readable.h
//  ReadableWeb
//
//  Created by Atsushi Nagase on 12/28/12.
//  Copyright (c) 2012 LittleApps Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "readable.h"

@interface NSString (readable)

- (NSString *)stringByReadableWithBaseURL:(NSURL *)URL;
- (NSString *)stringByReadableWithBaseURL:(NSURL *)URL
                                  options:(NSInteger)options;
- (NSURL *)nextPageURLWithBaseURL:(NSURL *)URL;


@end
