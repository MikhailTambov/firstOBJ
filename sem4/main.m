////
////  main.m
////  firstOBJ
////
////  Created by Михаил Тамбов on 02.04.2024.
////
//
//#import <Foundation/Foundation.h>
//
//@interface Robot : NSObject
//
//@property(nonatomic, assign) int x;
//@property(nonatomic, assign) int y;
//
//- (void)run:(NSString * (^)(void))block;
//
//@end
//
//@implementation Robot
//
//- (instancetype)init {
//    self = [super init];
//    if (self) {
//        _x = 2;
//        _y = 0;
//    }
//    return self;
//}
//
//- (void)run:(NSString * (^)(void))block {
//    NSString *direction = block();
//    
//    if ([direction isEqualToString:@"up"]) {
//        self.y++;
//    } else if ([direction isEqualToString:@"down"]) {
//        self.y--;
//    } else if ([direction isEqualToString:@"left"]) {
//        self.x--;
//    } else if ([direction isEqualToString:@"right"]) {
//        self.x++;
//    }
//}
//
//@end
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        Robot *robot = [[Robot alloc] init];
//        
//        [robot run:^NSString *{
//            return @"up";
//        }];
//        
//        [robot run:^NSString *{
//            return @"right";
//        }];
//        
//        [robot run:^NSString *{
//            return @"down";
//        }];
//        
//        [robot run:^NSString *{
//            return @"left";
//        }];
//        
//        NSLog(@"Final position: x = %d, y = %d", robot.x, robot.y);
//    }
//    return 0;
//}
