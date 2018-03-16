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
    num = newNum;
    NSArray *movieName = @[@"《西游记之孙悟空三打白骨精》",@"《长城》",@"《西游伏魔篇》",@"《盗墓笔记之七星鲁王宫》",@"《西游记之孙悟空三打白骨精》",@"《疯狂的外星人》"];
    //    NSLog(@"你选择的电影是：%@",[movieName objectAtIndex:newNum]);
    title= [movieName objectAtIndex:newNum-1];
    //    movieLog(name);
    NSLog(@"你选择的电影是：%@\n",title);
}


-(id)movieListDic{
    
    NSMutableDictionary *mdict = [@{} mutableCopy];
    [mdict setObject:@"电影名称：《西游记之孙悟空三打白骨精》 导演:郑保瑞 主演:郭富城 时长:120 开播时间:19:30" forKey:@"1"];
    [mdict setObject:@"电影名称：《长城》 导演：张艺谋 主演：张涵予 时长：130 开播时间：20:00" forKey:@"2"];
    [mdict setObject:@"电影名称：《西游伏魔篇》 导演：徐克 主演：林更新 时长：100 开播时间：20:30" forKey:@"3"];
    [mdict setObject:@"电影名称：《盗墓笔记之七星鲁王宫》 导演：李仁港 主演：井柏然 时长：110 开播时间：21:00" forKey:@"4"];
    [mdict setObject:@"电影名称：《疯狂的外星人》 导演：宁浩 主演：刘小航 时长：180 开播时间：21:30" forKey:@"5"];

    movieName = [mdict valueForKey:[[NSString alloc] initWithFormat:@"%d",num ]];
    return movieName;
}

-(id)titleName{
    return title;
}
-(id)movieName{
    return movieName;
}
@end
