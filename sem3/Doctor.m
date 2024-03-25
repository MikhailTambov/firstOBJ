//
//  Doctor.m
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import "Doctor.h"

@implementation Doctor

- (void)prescribeMedicationToPatient {
    NSLog(@"Доктор выписывает лекарство");
    [self.delegate takeMedication];
}

@end
