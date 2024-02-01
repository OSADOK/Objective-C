//
//  Robot.h
//  HomeWork_4
//
//  Created by Славон Еремин on 01.02.2024.
//
#import <Foundation/Foundation.h>
#import "Robot.h"

@interface Robot : NSObject

@property(nonatomic, assign) NSInteger x;
@property(nonatomic, assign) NSInteger y;

- (void)runWithDirection:(NSString *(^)(void))directionBlock;

@end
