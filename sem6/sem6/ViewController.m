//
//  ViewController.m
//  sem6
//
//  Created by Михаил Тамбов on 05.04.2024.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButtonTapped:(id)sender {
    Robot *robot = [[Robot alloc] init];
    robot.x = [self.xTextField.text floatValue];
    robot.y = [self.yTextField.text floatValue];
    robot.name = self.nameTextField.text;
    
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [[NSUserDefaults standardUserDefaults] setObject:robotData forKey:robot.name];
}

@end
