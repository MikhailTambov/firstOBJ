//
//  DoctorDelegate.h
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate <NSObject>
- (void) prescribeMedicationToPatient;
@end

NS_ASSUME_NONNULL_END
