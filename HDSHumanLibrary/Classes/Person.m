//
//  Person.m
//  DemoFunction
//
//  Created by Chenfy on 2019/5/31.
//  Copyright © 2019 Chenfy. All rights reserved.
//

#import "Person.h"
#import "Teacher.h"

@implementation Person

- (void)setName:(NSString *)name
{
    NSLog(@"person name --:%@",name);
}

- (Person *)eat
{
    NSLog(@"person eat!");
    return self;
}

- (Person *)drink
{
    NSLog(@"person drink!");
    return self;
}

- (void (^)(void))smile
{
    NSLog(@"person smile!");
    void(^smile)(void) = ^{
        NSLog(@"person block smile!");
        NSLog(@"%s",__FUNCTION__);
    };
    return smile;
}

- (void (^)(void))laugh
{
    NSLog(@"person laugh!");
    return ^{
        NSLog(@"person block laugh!");
        NSLog(@"%s",__FUNCTION__);
    };
}

- (Person * _Nonnull (^)(NSString *))nameCall
{
    Person *(^nameBlock)(NSString *name) = ^(NSString *name){
        if (!name)
        {
            name = @"1234567";
        }
        NSLog(@"person block name--:%@",name);
        return self;
    };
    return nameBlock;
}

- (Person * _Nonnull (^)(int))ageCall
{
    return ^(int age){
        NSLog(@"person block age--:%d",age);
        return self;
    };
}

id createPerson()
{
    return [Person new];
}

static id createPerson_static()
{
    return [Person new];
}


#pragma mark -- 方法解析
- (id)forwardingTargetForSelector:(SEL)aSelector
{
    Teacher *t = [Teacher new];
    if ([t respondsToSelector:aSelector])
    {
        NSLog(@"forwardingTargetForSelector---");
        return t;
    }
    return nil;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    return [super resolveInstanceMethod:sel];
}



@end
