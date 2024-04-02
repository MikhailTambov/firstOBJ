//
//  ViewController.m
//  sem5
//
//  Created by Михаил Тамбов on 02.04.2024.
//

#import "ViewController.h"
#import "Loader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    [self performLoadingGetRequest];
    // Do any additional setup after loading the view.
}

- (void)performLoadingGetRequest {
    [self.loader perfomeGetRequest:@"https://postman-echo.com/get" arguments:@{@"ark1":@"wall1", @"ark2":@"wall2"} myblock:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
        });
    }];
}

@end
