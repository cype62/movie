//
//  movielist.h
//  test1
//
//  Created by BennyChen on 2018/3/14.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface movieSeat : NSObject
@property(nonatomic,assign)int seatX;
@property(nonatomic,assign)int seatY;
@property(nonatomic,strong)NSString *stXY;
//@property(nonatomic,copy)NSString *director;
//@property(nonatomic,copy)NSString *star;
//@property(nonatomic,copy)NSString *duration;
//@property(nonatomic,copy)NSString *starttime;



//展示座位
-(void)seatXY;
//购票
//-(void)setDoPay:(NSString *)moviename;
-(void)doPay;

//确认购票后的位置
-(void)seatXYb;

@end
