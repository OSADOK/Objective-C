//
//  Doctor.h
//  HomeWork_3
//
//  Created by Славон Еремин on 29.01.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DoctorDelegate <NSObject>
- (void)patientDidTakePill;
@end

@interface Doctor : NSObject

@property (nonatomic, weak) id<DoctorDelegate> delegate;

- (void)prescribePillToPatient;

@end



NS_ASSUME_NONNULL_END
