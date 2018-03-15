//
//  movielist.m
//  test1
//
//  Created by BennyChen on 2018/3/14.
//  Copyright © 2018年 BennyChen. All rights reserved.
//
#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#define  movieLog(x) NSLog(@"亲，你选择的电影是：%@",x);
#import "movielist.h"

@implementation movielist



//-(id)copyWithZone:(NSZone *)zone{
//    movielist *copy = [[[self class] allocWithZone:zone] init];
//    copy.moviename = [self.moviename copyWithZone:zone];
//    return copy;
//}

//根据输入编号，返回电影名字
-(void)setNum:(int)newNum{
    NSArray *movieName = @[@"《西游记之孙悟空三打白骨精》",@"《长城》",@"《西游伏魔篇》",@"《盗墓笔记之七星鲁王宫》",@"《西游记之孙悟空三打白骨精》",@"《疯狂的外星人》"];
//    NSLog(@"你选择的电影是：%@",[movieName objectAtIndex:newNum]);
     title= [movieName objectAtIndex:newNum];
//    movieLog(name);
    NSLog(@"你选择的电影是：%@\n",title);
    
}

-(id)titleName{
    return title;
}

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
    int seatY = 0;
    scanf("%d",&seatY);
    NSLog(@"你选择排数是:%d\n",seatY);
    NSLog(@"请选择座位号[1,15]:");
    int seatX = 0;
    scanf("%d",&seatX);
    NSLog(@"你选择座位号是:%d\n",seatX);
    NSLog(@"你选择观看的电影是：%@ %d排%d座\n",title,seatY,seatX);
}

-(id)doPay{
    //  获取字符串类型
    NSLog(@"你确定要购买吗? y/n\n");
    char pay;
    rewind(stdin);
    scanf("%c",&pay);
    if(pay == 'y'){
        NSLog(@"你好，这是你的购票信息，款项已扣除：\n");
        
    }else if(pay == 'n'){
        NSLog(@"退出\n");
    }else{
        NSLog(@"输入有误，请重新输入!");
    }
    return 0;
}


-(void)movieList{
    NSLog(@"编号：1 名称：《西游记之孙悟空三打白骨精》 导演:郑保瑞 主演:郭富城 时长:120 开播时间:19:30\n");
    NSLog(@"编号：2 名称：《长城》 导演：张艺谋 主演：张涵予 时长：130 开播时间：20:00\n");
    NSLog(@"编号：3 名称：《西游伏魔篇》 导演：徐克 主演：林更新 时长：100 开播时间：20:30\n");
    NSLog(@"编号：4 名称：《盗墓笔记之七星鲁王宫》 导演：李仁港 主演：井柏然 时长：110 开播时间：21:00\n");
    NSLog(@"编号：5 名称：《疯狂的外星人》 导演：宁浩 主演：刘小航 时长：180 开播时间：21:30\n");
}



-(NSArray *)movieListDic{
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"1",@"编号",@"《西游记之孙悟空三打白骨精》",@"名称",@"郑保瑞",@"导演",@"郭富城",@"主演",@"120",@"时长",@"19:30",@"开播时间", nil];
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"2",@"编号",@"《西游记之孙悟空三打白骨精》",@"名称",@"郑保瑞",@"导演",@"郭富城",@"主演",@"120",@"时长",@"19:30",@"开播时间", nil];
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"3",@"编号",@"《西游记之孙悟空三打白骨精》",@"名称",@"郑保瑞",@"导演",@"郭富城",@"主演",@"120",@"时长",@"19:30",@"开播时间", nil];
    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"4",@"编号",@"《西游记之孙悟空三打白骨精》",@"名称",@"郑保瑞",@"导演",@"郭富城",@"主演",@"120",@"时长",@"19:30",@"开播时间", nil];
    NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"5",@"编号",@"《西游记之孙悟空三打白骨精》",@"名称",@"郑保瑞",@"导演",@"郭富城",@"主演",@"120",@"时长",@"19:30",@"开播时间", nil];
    
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    [arr addObject:dic1];
    [arr addObject:dic2];
    [arr addObject:dic3];
    [arr addObject:dic4];
    [arr addObject:dic5];
    for (NSArray *listarr in arr) {
        for (NSString *listarr1 in listarr){
        NSLog(@"%@\n",listarr1);
        }
    }
    
    return arr;
    
}

//-(id) movieName{
//    moveListDic();
//    NSArray *name = moveListDic();
////    NSPredicate *pre = [NSPredicate predicateWithFormat:"SELF CONTAINS"]
//    return name;
//}

@end
