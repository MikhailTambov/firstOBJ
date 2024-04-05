//
//  SecondViewController.m
//  s5
//
//  Created by Михаил Тамбов on 02.04.2024.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.textField1 = [[UITextField alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width - 40, 40)];
    self.textField1.placeholder = @"Enter data 1";
    self.textField1.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.textField1];
    
    self.textField2 = [[UITextField alloc] initWithFrame:CGRectMake(20, 160, self.view.frame.size.width - 40, 40)];
    self.textField2.placeholder = @"Enter data 2";
    self.textField2.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.textField2];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 220, self.view.frame.size.width - 40, 40);
    [button setTitle:@"Submit" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(submitData) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)submitData {
    NSString *data1 = self.textField1.text;
    NSString *data2 = self.textField2.text;
    
    NSURL *url = [NSURL URLWithString:@"https://postman-echo.com/get"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"POST";
    NSString *postString = [NSString stringWithFormat:@"data1=%@&data2=%@", data1, data2];
    request.HTTPBody = [postString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (data) {
            NSLog(@"Data sent successfully!");
        }
    }];
    [dataTask resume];
}

@end
