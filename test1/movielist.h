//
//  movielist.h
//  test1
//
//  Created by BennyChen on 2018/3/14.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface movielist : NSObject{
    NSString *title;
    int num;
}
//@property(nonatomic,assign)int num;
//@property(nonatomic,strong)NSString *title;
//@property(nonatomic,copy)NSString *director;
//@property(nonatomic,copy)NSString *star;
//@property(nonatomic,copy)NSString *duration;
//@property(nonatomic,copy)NSString *starttime;

//获取电影列表
-(void)movieList;
//-(NSArray *)movieListDic;
//根据编号获取电影名称
-(void)setNum:(int)newNum;
//展示座位
-(void)seatXY;
//购票
-(id)doPay;
@end
