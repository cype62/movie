//
//  movielist.m
//  test1
//
//  Created by BennyChen on 2018/3/14.
//  Copyright © 2018年 BennyChen. All rights reserved.
//
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#define  movieLog(x) NSLog(@"亲，你选择的电影是：%@",x);
#import "movieSeat.h"
#import "movieInfo.h"

@implementation movieSeat

//展示座位表
-(void)seatXY{
    int x;      //横排
    int y;      //纵排
    NSLog(@"现在为你展示影厅的座位表");
    for(y = 0;y <= 7;y++){
        NSLog(@"\n");
        if(y == 0){
            for(x = 0;x <= 15;x++){
                NSLog(@"%02d ",x);
            }
        }else{
            for(x = 0;x <= 14;x++){
                if(x == 0){
                    NSLog(@"%02d ",y);
                }
                NSLog(@"+  ");
            }
        }
        
    }
    //  选择座位坐标
    NSLog(@"\n请选择排数[1,7]:");
    scanf("%d",&_seatY);
    NSLog(@"你选择排数是:%d\n",_seatY);
    NSLog(@"请选择座位号[1,15]:");
    scanf("%d",&_seatX);
    NSLog(@"你选择座位号是:%d\n",_seatX);
    _stXY = [[NSString alloc] initWithFormat:@"%d排%d座",_seatY,_seatX ];
}

//展示已选座位
-(void)seatXYb{
    int x;      //横排
    int y;      //纵排
    NSLog(@"\n现在为你展示影厅的座位表");
    for(y = 0;y <= 7;y++){
        NSLog(@"\n");
        if(y == 0){
            for(x = 0;x <= 15;x++){
                NSLog(@"%02d ",x);
            }
        }else{
            for(x = 0;x <= 15;x++){
                if(x == 0){
                    NSLog(@"%02d ",y);
                }else if(x == _seatX && y == _seatY){
                    NSLog(@"@  ");
                }else{
                    NSLog(@"+  ");
                    }
                }
            
            }
        
        }
    NSLog(@"\n");
}

//缴费方法
-(void)doPay{
//-(void)setDoPay:(NSString *)moviename{
    //  获取字符串类型
    NSLog(@"你确定要购买吗? y/n\n");
    char pay;
    rewind(stdin);
    scanf("%c",&pay);
    if(pay == 'y'){
        NSLog(@"你好，这是你的购票信息。款项已扣除：\n");
//        NSLog(@"已扣款，电影票据：%@\n",[ ])
        
    }else if(pay == 'n'){
        NSLog(@"不买你来干啥，拜拜！\n");
        exit(0);
        
    }else{
        NSLog(@"输入有误，请重新输入!");
    }
}


@end
