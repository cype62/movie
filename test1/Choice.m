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
    movieInfo *list = [[movieInfo alloc]init];
    movieSeat *seat = [[movieSeat alloc]init];
    //  获取整型数据
    NSLog(@"请输入你要观看的电影的编号:");
    int userSelect = 0;
    scanf("%d",&userSelect);
    //转换一下类型，提供给谓词判断
    NSString *str1 = [NSString stringWithFormat:@"%d",userSelect];
    //谓词判断是否是1-5的范围
    if(predicate(str1)){
    

    switch (userSelect) {
        case 1:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [seat doPay];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            [seat seatXYb];
            break;
        case 2:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [seat doPay];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            [seat seatXYb];
            break;
        case 3:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [seat doPay];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            [seat seatXYb];
            break;
        case 4:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [seat doPay];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            [seat seatXYb];
            break;
        case 5:
            [list setNum:userSelect];
            [seat seatXY];
            NSLog(@"你选择的电影是：%@ %@\n",[list titleName],seat.stXY);
            [seat doPay];
            [list setMovieDic:@[@"电影名称",@"价格",@"上映时间"]];
            NSLog(@"%@  ",seat.stXY);
            [list setMovieDic:@[@"开播时间"]];
            [seat seatXYb];
            break;
        default:
            NSLog(@"输入有误，请重新输入！");
            
            break;
    }
    }else{
        NSLog(@"通过谓词判断：输入有误，请输入1-5的编号！\n");
        
    }
    
}

//谓词
//判断是否含有非法字符 no 有  yes没有

BOOL predicate(NSString *content){
    
    //提示 标签不能输入特殊字符
//    NSString *str =@"^[A-Za-z0-9\\u4e00-\u9fa5]+$";
    //判断1-5编号
    NSString *str =@"^[1-5]+$";
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", str];
    if (![pre evaluateWithObject:content]) {
        return NO;
    }
    return YES;
}
    


@end
