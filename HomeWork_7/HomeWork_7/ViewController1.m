//
//  ViewController1.m
//  HomeWork_7
//
//  Created by Славон Еремин on 07.02.2024.
//

#import "ViewController1.h"

@interface ViewController1 ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)submitButtonPressed:(id)sender {
    // Получение значений из текстовых полей
    CGFloat x = [self.xTextField.text floatValue];
    CGFloat y = [self.yTextField.text floatValue];
    NSString *name = self.nameTextField.text;
    
    // Создание объекта Robot и сохранение в UserDefaults
    Robot *robot = [[Robot alloc] init];
    robot.x = x;
    robot.y = y;
    robot.name = name;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [defaults setObject:robotData forKey:@"robot"];
    [defaults synchronize];
    
    // Очистка текстовых полей
    self.xTextField.text = @"";
    self.yTextField.text = @"";
    self.nameTextField.text = @"";
}

@end
