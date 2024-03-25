//
//  Doctor.h
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import <Foundation/Foundation.h>
#import "DoctorDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (nonatomic, weak, nullable) id<DoctorDelegate> delegate;

- (void)prescribeMedicationToPatient;

@end

NS_ASSUME_NONNULL_END
