//
//  SecondViewController.m
//  sem6
//
//  Created by Михаил Тамбов on 05.04.2024.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(id)sender {
    Robot *robot = [[Robot alloc] init];
    robot.x = [self.xTextField.text floatValue];
    robot.y = [self.yTextField.text floatValue];
    robot.name = self.nameTextField.text;
    
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.archive", [self documentDirectory], robot.name];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [robotData writeToFile:filePath atomically:YES];
}

- (NSString *)documentDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
}

@end

