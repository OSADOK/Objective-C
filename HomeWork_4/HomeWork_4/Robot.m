//
//  Robot.m
//  HomeWork_4
//
//  Created by Славон Еремин on 01.02.2024.
//
#import <Foundation/Foundation.h>
#import "Robot.h"
#import "Robot.m"

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        self.x = 0;
        self.y = 0;
    }
    return self;
}

- (void)runWithDirection:(NSString *(^)(void))directionBlock {
    NSString *direction = directionBlock();
    if ([direction isEqualToString:@"up"]) {
        self.y++;
    } else if ([direction isEqualToString:@"down"]) {
        self.y--;
    } else if ([direction isEqualToString:@"left"]) {
        self.x--;
    } else if ([direction isEqualToString:@"right"]) {
        self.x++;
    }
}

@end
