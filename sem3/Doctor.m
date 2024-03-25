//
//  Doctor.m
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void)prescribeMedicationToPatient {
    if ([self.delegate respondsToSelector:@selector(patientShouldTakeMedication)]) {
        [self.delegate patientShouldTakeMedication];
    }
}

@end
