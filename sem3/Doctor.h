//
//  Doctor.h
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, weak) id<PatientDelegate> delegate;

- (void)prescribeMedicationToPatient;

@end
