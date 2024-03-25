//
//  main.m
//  firstOBJ
//
//  Created by Михаил Тамбов on 25.03.2024.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [Doctor new];
        Patient *patient = [Patient new];
        doctor.delegate = patient;
        [doctor prescribeMedicationToPatient];
    }
    return 0;
}
