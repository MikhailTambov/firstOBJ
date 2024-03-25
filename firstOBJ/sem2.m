////
////  sem2.m
////  firstOBJ
////
////  Created by Михаил Тамбов on 21.03.2024.
////
//
//#import <Foundation/Foundation.h>
//
//@interface Figure : NSObject
//
//- (double)calculateArea;
//- (double)calculatePerimeter;
//- (void)printInfo;
//
//@end
//
//@implementation Figure
//
//- (double)calculateArea {
//    return 0.0;
//}
//
//- (double)calculatePerimeter {
//    return 0.0;
//}
//
//- (void)printInfo {
//    NSLog(@"Фигура");
//}
//
//@end
//
//@interface Rectangle : Figure
//
//@property double width;
//@property double height;
//
//@end
//
//@implementation Rectangle
//
//- (double)calculateArea {
//    return self.width * self.height;
//}
//
//- (double)calculatePerimeter {
//    return 2 * (self.width + self.height);
//}
//
//- (void)printInfo {
//    NSLog(@"Прямоугольник: Площадь=%.2f, Периметр=%.2f", [self calculateArea], [self calculatePerimeter]);
//}
//
//@end
//
//@interface Circle : Figure
//
//@property double radius;
//
//@end
//
//@implementation Circle
//
//- (double)calculateArea {
//    return M_PI * self.radius * self.radius;
//}
//
//- (double)calculatePerimeter {
//    return 2 * M_PI * self.radius;
//}
//
//- (void)printInfo {
//    NSLog(@"Круг: Площадь=%.2f, Периметр=%.2f", [self calculateArea], [self calculatePerimeter]);
//}
//
//@end
//
//@interface Triangle : Figure
//
//@property double side1;
//@property double side2;
//@property double side3;
//
//@end
//
//@implementation Triangle
//
//- (double)calculateArea {
//    double s = (self.side1 + self.side2 + self.side3) / 2;
//    return sqrt(s * (s - self.side1) * (s - self.side2) * (s - self.side3));
//}
//
//- (double)calculatePerimeter {
//    return self.side1 + self.side2 + self.side3;
//}
//
//- (void)printInfo {
//    NSLog(@"Треугольник: Площадь=%.2f, Периметр=%.2f", [self calculateArea], [self calculatePerimeter]);
//}
//
//@end
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        Rectangle *rect = [[Rectangle alloc] init];
//        rect.width = 5.0;
//        rect.height = 3.0;
//        
//        Circle *circle = [[Circle alloc] init];
//        circle.radius = 4.0;
//        
//        Triangle *triangle = [[Triangle alloc] init];
//        triangle.side1 = 3.0;
//        triangle.side2 = 4.0;
//        triangle.side3 = 5.0;
//        
//        NSArray *figures = @[rect, circle, triangle];
//        
//        for (Figure *figure in figures) {
//            [figure printInfo];
//        }
//    }
//    return 0;
//}
