//
//  movieInfo.m
//  test1
//
//  Created by BennyChen on 2018/3/15.
//  Copyright © 2018年 BennyChen. All rights reserved.
//

#define NSLog(FORMAT, ...) fprintf(stderr,"%s",[[NSString   stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])
#import "movieInfo.h"

@implementation movieInfo


-(void)movieList{
    NSLog(@"编号：1 名称：《西游记之孙悟空三打白骨精》 导演:郑保瑞 主演:郭富城 时长:120 开播时间:19:30\n");
    NSLog(@"编号：2 名称：《长城》 导演：张艺谋 主演：张涵予 时长：130 开播时间：20:00\n");
    NSLog(@"编号：3 名称：《西游伏魔篇》 导演：徐克 主演：林更新 时长：100 开播时间：20:30\n");
    NSLog(@"编号：4 名称：《盗墓笔记之七星鲁王宫》 导演：李仁港 主演：井柏然 时长：110 开播时间：21:00\n");
    NSLog(@"编号：5 名称：《疯狂的外星人》 导演：宁浩 主演：刘小航 时长：180 开播时间：21:30\n");
}

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
@end
