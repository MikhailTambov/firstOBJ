//
//  Robot.h
//  sem6
//
//  Created by Михаил Тамбов on 05.04.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, strong) NSString *name;

@end

NS_ASSUME_NONNULL_END
