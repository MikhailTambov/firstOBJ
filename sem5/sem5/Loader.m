//
//  Loader.m
//  sem5
//
//  Created by Михаил Тамбов on 02.04.2024.
//

#import "Loader.h"

@implementation Loader

- (NSURLSession*) session {
    if (!_session) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
        configuration.HTTPAdditionalHeaders = @{@"Content-type":@"application/json", @"Accept":@"application/json", @"user-agent": @"Iphone15"};
        _session = [NSURLSession sessionWithConfiguration:configuration];
    }
    return _session;
}

- (NSData*)dataWithJson:(NSDictionary*)jsonDict error:(NSError** )error {
    return [NSJSONSerialization dataWithJSONObject:jsonDict options:kNilOptions error:error];
    // реализация
}

- (NSDictionary *)parsJsonData:( NSData*)data error:(NSError** )error {
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
}

- (void)perfomeGetRequest:( NSString*)stringUrl arguments:( NSDictionary *)arguments myblock:(void (^)(NSDictionary*  , NSError*))block {
    NSURLComponents* urlComponents = [NSURLComponents componentsWithString:stringUrl];
    if (arguments) {
        NSMutableArray <NSURLQueryItem*>* queryItems = [NSMutableArray new];
        for (NSString* key in arguments.allKeys) {
            [queryItems addObject:[NSURLQueryItem queryItemWithName:key value:arguments[key]]];
        }
        urlComponents.queryItems = [queryItems copy];
    }
    NSURL *url = urlComponents.URL;
    NSURLSessionDataTask* dataTask = [self.session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            block(nil, error);
            return;
        }
        NSError* parsingError;
        NSDictionary* dict = [self parsJsonData:data error:&parsingError];
        if (parsingError) {
            block(nil, parsingError);
            return;
        }
        block(dict, nil);
    }];
    
    [dataTask resume];
    
}

- (void)perfomePostRequest:( NSString*)stringUrl arguments:( NSDictionary*)arguments myblock:( void (^)(NSDictionary*  , NSError*))block {
}



@end
