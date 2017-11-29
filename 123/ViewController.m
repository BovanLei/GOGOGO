//
//  ViewController.m
//  123
//
//  Created by 雷博文 on 2017/11/16.
//  Copyright © 2017年 雷博文. All rights reserved.
//

#import "ViewController.h"
#import "blockTest.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化变量
    NSString *myName = @"I am leibowen";
    NSMutableString *newName = [[NSMutableString alloc] init];
    NSArray *nameArray = [myName componentsSeparatedByString:@" "];
    int loopCount = 0;
    
    //将数组中每个单独的单词反转
    for (NSString *singleWord in nameArray) {
        //讲每个单词从最后一个字母开始逐个添加到可变字符串中
        for (NSUInteger k = singleWord.length; k>0; k--) {
            [newName appendString:[singleWord substringWithRange:NSMakeRange(k - 1, 1)]];
        }
        
        //判断是否加空格
        if (loopCount != nameArray.count -1) {
            [newName appendString:@" "];
        }
    }
    
    NSLog(@"%@",newName);
    
    unichar a = [myName characterAtIndex:0];
    
    NSLog(@"a = %c",a);
    
    ////////////////////////////////////////////////////以下是block传值的实验 结论：block修改外部对象中的值时不需要__block
    blockTest *bTest = [[blockTest alloc] init];
    int buxiushi = 77;
    __block int xiushi = 88;
    
    void (^testBlock)(void) = ^{
        bTest.testNum = 555;
        xiushi = 99;
        NSLog(@"buxiushi在block里 = %d",buxiushi);
        NSLog(@"在block中时对象中的值为%d",bTest.testNum);
    };
    buxiushi = 99;
    NSLog(@"一开始的对象中的值为%d",bTest.testNum);
    testBlock();
    NSLog(@"xiushi = %d,buxiushi = %d",xiushi,buxiushi);
    NSLog(@"之后的对象中的值为%d",bTest.testNum);
    
    
}

void solution(int List[],int N){
    int final[3];
    int thisSum = 0,maxSum = 0;
    int minElement = List[0],maxElement = List[0];
    for(int i = 0;i < N;i++){
        thisSum += List[i];
        if(thisSum > maxSum){
            maxSum = thisSum;
        }
        
            maxElement = List[i];
        
        
        if(thisSum < 0){
            thisSum = 0;
            minElement = List[i+1];
            maxElement = List[i+1];
        }
    }
    final[0] = maxSum;
    final[1] = minElement;
    final[2] = maxElement;
    printf("%d,%d,%d\n",final[0],final[1],final[2]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
