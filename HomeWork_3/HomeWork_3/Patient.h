//
//  Patient.h
//  HomeWork_3
//
//  Created by Славон Еремин on 29.01.2024.
//

#import <Foundation/Foundation.h>

@protocol DoctorDelegate;

@interface Patient : NSObject <DoctorDelegate>

- (void)takePill;

@end
