//
//  main.m
//  HomeWork_3
//
//  Created by Славон Еремин on 25.01.2024.
//
#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] init];
        Patient *patient = [[Patient alloc] init];
        
        doctor.delegate = patient;
        [doctor prescribePillToPatient];
    }
    return 0;
}
