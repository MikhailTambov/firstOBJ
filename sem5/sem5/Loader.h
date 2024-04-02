//
//  Loader.h
//  sem5
//
//  Created by Михаил Тамбов on 02.04.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject
@property (nonatomic) NSURLSession* session;

-(void)perfomeGetRequest:(NSString*) stringUrl arguments:(NSDictionary*) arguments myblock:(void(^)(NSDictionary*, NSError* )) block;
-(void)perfomePostRequest:(NSString*) stringUrl arguments:(NSDictionary*) arguments myblock:(void(^)(NSDictionary*, NSError* )) block;
-(NSDictionary*)parsJsonData:(NSData*) data error:(NSError**) error;
-(NSData*)dataWithJson:(NSDictionary*) jsonDict error:(NSError**) error;

@end

NS_ASSUME_NONNULL_END
