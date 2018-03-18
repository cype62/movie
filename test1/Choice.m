//
//  Choice.m
//  test1
//
//  Created by BennyChen on 2018/3/14.
//  Copyright © 2018年 BennyChen. All rights reserved.
//
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#define  movieLog(x) NSLog(@"亲，你选择的电影是：%@",x);
#import "Choice.h"
#import "movieSeat.h"
#import "movieInfo.h"

@implementation Choice

-(void)movieChoice{
    //  获取整型数据
    NSLog(@"请输入你要观看的电影的编号:");
    int userSelect = 0;
    scanf("%d",&userSelect);
    
    movieInfo *list = [[movieInfo alloc]init];
    movieSeat *seat = [[movieSeat alloc]init];
    switch (userSelect) {
        case 1:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [list movieListDic];
            [seat setDoPay:(list.movieName)];
            [seat seatXYb];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            break;
        case 2:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [list movieListDic];
            [seat setDoPay:(list.movieName)];
            [seat seatXYb];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            break;
        case 3:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [list movieListDic];
            [seat setDoPay:(list.movieName)];
            [seat seatXYb];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            break;
        case 4:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [list movieListDic];
            [seat setDoPay:(list.movieName)];
            [seat seatXYb];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            break;
        case 5:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [list movieListDic];
            [seat setDoPay:(list.movieName)];
            [seat seatXYb];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            break;
        default:
            NSLog(@"输入有误，请重新输入！");
    
            break;
    }
}
@end
