//
//  main.m
//  test1
//
//  Created by BennyChen on 2018/3/10.
//  Copyright © 2018年 BennyChen. All rights reserved.
//
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#import <Foundation/Foundation.h>
#import "Choice.h"
#import "movieSeat.h"
#import "movieInfo.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"==============欢迎观临慕课电影院==============\n");
        NSLog(@"=======热播电影列表=======\n");
        movieInfo *list = [[movieInfo alloc] init];
        [list movieList];
        Choice *userSelect = [[Choice alloc] init];
        [userSelect movieChoice];
       
        
         }
    return 0;
}
