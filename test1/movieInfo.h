//
//  movieInfo.h
//  test1
//
//  Created by BennyChen on 2018/3/15.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface movieInfo : NSObject{
    NSString *title;
    int num;
    NSString *movieName;
}

-(id)movieListDic;
//获取电影列表
-(void)movieList;
//根据编号获取电影名称
-(void)setNum:(int)newNum;
//获取电影名称
-(id)titleName;
//获取购票的电影信息
-(id)movieName;

-(id)movieDic;

@end
