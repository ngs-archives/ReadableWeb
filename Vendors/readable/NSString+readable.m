//
//  NSString+readable.m
//  ReadableWeb
//
//  Created by Atsushi Nagase on 12/28/12.
//  Copyright (c) 2012 LittleApps Inc. All rights reserved.
//

#import "NSString+readable.h"

@implementation NSString (readable)

- (NSString *)stringByReadableWithBaseURL:(NSURL *)URL {
  return [self stringByReadableWithBaseURL:URL options:READABLE_OPTIONS_DEFAULT];
}

- (NSString *)stringByReadableWithBaseURL:(NSURL *)URL options:(NSInteger)options {
  const char *ret = readable(self.UTF8String, URL.absoluteString.UTF8String, "utf-8", options);
  return ret ? [[NSString alloc] initWithCString:ret encoding:NSUTF8StringEncoding] : nil;
}

- (NSURL *)nextPageURLWithBaseURL:(NSURL *)URL {
  const char *ret = next_page_url(self.UTF8String, URL.absoluteString.UTF8String, "utf-8");
  return ret ? [NSURL URLWithString:[[NSString alloc] initWithCString:ret encoding:NSUTF8StringEncoding]] : nil;
}

@end
