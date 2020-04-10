//
//  Person.h
//  DemoFunction
//
//  Created by Chenfy on 2019/5/31.
//  Copyright © 2019 Chenfy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (void)setName:(NSString *)name;

#pragma mark -- localfunction
- (Person *)eat;
- (Person *)drink;

#pragma mark -- block
- (void(^)(void))smile;
- (void(^)(void))laugh;

#pragma mark -- block chain
- (Person *(^)(NSString *name))nameCall;
- (Person *(^)(int age))ageCall;

id createPerson();
static id createPerson_static();

@end

NS_ASSUME_NONNULL_END
