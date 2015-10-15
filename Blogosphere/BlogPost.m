//
//  BlogPost.m
//  Blogosphere
//
//  Created by Cotten Blackwell on 10/15/15.
//  Copyright © 2015 Cotten Blackwell. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    
    if ( self ){
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    
    return self;
}

+ (id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (NSURL *) thumbnailURL {
    //    NSLog(@"%@",[self.thumbnail class]);
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
    [dateFormatter setDateFormat:@"EE MMM,dd"];
    return [dateFormatter stringFromDate:tempDate];
    
}






@end
