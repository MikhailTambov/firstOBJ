//
//  Patient.h
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import <Foundation/Foundation.h>

@protocol PatientDelegate <NSObject>

- (void)patientShouldTakeMedication;

@end

@interface Patient : NSObject <PatientDelegate>

- (void)takeMedication;

@end
