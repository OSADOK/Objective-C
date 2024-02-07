//
//  ViewController2.m
//  HomeWork_7
//
//  Created by Славон Еремин on 07.02.2024.
//

#import "ViewController2.h"

@interface ViewController2 ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Чтение файла и отображение содержимого в TextView
    NSString *fileName = self.nameTextField.text;
    NSString *filePath = [self getFilePathForFileName:fileName];
    NSString *fileContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    self.textView.text = fileContent;
}

- (IBAction)submitButtonPressed:(id)sender {
    // Получение значений из текстовых полей
    CGFloat x = [self.xTextField.text floatValue];
    CGFloat y = [self.yTextField.text floatValue];
    NSString *name = self.nameTextField.text;
    
    // Создание объекта Robot и сохранение в файл с именем, соответствующим имени робота
    Robot *robot = [[Robot alloc] init];
    robot.x = x;
    robot.y = y;
    robot.name = name;
    
    NSString *fileName = robot.name;
    NSString *filePath = [self getFilePathForFileName:fileName];
    NSString *robotData = [NSString stringWithFormat:@"x: %f, y: %f, name: %@", robot.x, robot.y, robot.name];
    [robotData writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    // Очистка текстовых полей
    self.xTextField.text = @"";
    self.yTextField.text = @"";
    self.nameTextField.text = @"";
}

- (NSString *)getDocumentDirectoryPath {
    NSArray *directoryPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [directoryPaths objectAtIndex:0];
}

- (NSString *)getFilePathForFileName:(NSString *)fileName {
    NSString *documentDirectoryPath = [self getDocumentDirectoryPath];
