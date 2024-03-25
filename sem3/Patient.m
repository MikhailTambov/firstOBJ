//
//  Patient.m
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import "Patient.h"

@implementation Patient

- (void)takeMedication {
    NSLog(@"Patient took the medication.");
}

- (void)patientShouldTakeMedication {
    [self takeMedication];
}

@end
