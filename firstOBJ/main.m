//
//  main.m
//  firstOBJ
//
//  Created by Михаил Тамбов on 16.03.2024.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        double a = 1;
//        double b = -8;
//        double c = 12;
//        
//        double discriminant = b*b - 4*a*c;
//        
//        if (discriminant > 0) {
//            double x1 = (-b + sqrt(discriminant)) / (2*a);
//            double x2 = (-b - sqrt(discriminant)) / (2*a);
//            NSLog(@"x1 = %f, x2 = %f", x1, x2);
//        } else if (discriminant == 0) {
//            double x = -b / (2*a);
//            NSLog(@"x = %f", x);
//        } else {
//            NSLog(@"Нет корней");
//        }
//    }
//    return 0;
//}
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        double a = 12;
//        double b = -4;
//        double c = 2;
//        
//        double discriminant = b*b - 4*a*c;
//        
//        if (discriminant > 0) {
//            double x1 = (-b + sqrt(discriminant)) / (2*a);
//            double x2 = (-b - sqrt(discriminant)) / (2*a);
//            NSLog(@"x1 = %f, x2 = %f", x1, x2);
//        } else if (discriminant == 0) {
//            double x = -b / (2*a);
//            NSLog(@"x = %f", x);
//        } else {
//            NSLog(@"Нет корней");
//        }
//    }
//    return 0;
//}

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        double a = 1;
//        double b = -100;
//        double c = -2;
//        
//        double discriminant = b*b - 4*a*c;
//        
//        if (discriminant > 0) {
//            double x1 = (-b + sqrt(discriminant)) / (2*a);
//            double x2 = (-b - sqrt(discriminant)) / (2*a);
//            NSLog(@"x1 = %f, x2 = %f", x1, x2);
//        } else if (discriminant == 0) {
//            double x = -b / (2*a);
//            NSLog(@"x = %f", x);
//        } else {
//            NSLog(@"Нет корней");
//        }
//    }
//    return 0;
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num1 = 100;
        int num2 = 25;
        int num3 = 15;
        
        int maxNumber = num1;
        
        if (num2 > maxNumber) {
            maxNumber = num2;
        }
        
        if (num3 > maxNumber) {
            maxNumber = num3;
        }
        
        NSLog(@"Максимальное число: %d", maxNumber);
    }
    return 0;
}
