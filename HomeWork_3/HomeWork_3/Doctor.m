//
//  Doctor.m
//  HomeWork_3
//
//  Created by Славон Еремин on 29.01.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void)prescribePillToPatient {
    NSLog(@"Врач: Примите эту таблетку");
    [self.delegate patientDidTakePill];
}

@end
