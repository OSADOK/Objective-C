//
//  main.m
//  HomeWork_4
//
//  Created by Славон Еремин on 01.02.2024.
//
#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        [robot runWithDirection:^NSString *{
            return @"up";
        }];
        NSLog(@"Robot's coordinates: (%ld, %ld)", (long)robot.x, (long)robot.y);
        
        [robot runWithDirection:^NSString *{
            return @"right";
        }];
        NSLog(@"Robot's coordinates: (%ld, %ld)", (long)robot.x, (long)robot.y);
    }
    return 0;
}

