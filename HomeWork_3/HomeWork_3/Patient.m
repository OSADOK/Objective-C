//
//  Patient.m
//  HomeWork_3
//
//  Created by Славон Еремин on 29.01.2024.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (void)takePill {
    NSLog(@"Пациент: Принимаю таблетку.");
}

- (void)patientDidTakePill {
    [self takePill];
}

@end
