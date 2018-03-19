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
    //电影名称
    NSString *movieName;
    //价格
    float price;
    //上映时间
    NSString *date;
    //开播时间
    NSString *time;
    //确认缴费后的电影信息
    NSString *abc;
}

//获取电影列表
-(void)movieList;
//根据编号获取电影名称
-(void)setNum:(int)newNum;
//获取电影名称
-(id)titleName;
//获取购票的电影信息
-(id)movieName;

-(void)setMovieDic:(NSArray *)newMovieDic;
-(id)abc;

@end
