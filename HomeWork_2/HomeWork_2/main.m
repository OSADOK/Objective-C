//
//  main.m
//  HomeWork_2
//
//  Created by Славон Еремин on 25.01.2024.
//

#import <Foundation/Foundation.h>

// Абстрактный класс Figure
@interface Figure : NSObject

// Методы, которые должны быть реализованы в подклассах
- (float)calculateArea;
- (float)calculatePerimeter;

// Метод для вывода информации о фигуре
- (void)printInfo;

@end

@implementation Figure

- (float)calculateArea {
    // Метод необходимо реализовать в подклассах
    return 0.0;
}

- (float)calculatePerimeter {
    // Метод необходимо реализовать в подклассах
    return 0.0;
}

- (void)printInfo {
    // Вывод информации о фигуре
    NSLog(@"Тип фигуры: Абстрактная фигура");
}

@end

// Класс прямоугольника
@interface Rectangle : Figure

@property float width;
@property float height;

@end

@implementation Rectangle

- (float)calculateArea {
    // Формула расчета площади прямоугольника
    return self.width * self.height;
}

- (float)calculatePerimeter {
    // Формула расчета периметра прямоугольника
    return 2 * (self.width + self.height);
}

- (void)printInfo {
    // Вывод информации о прямоугольнике
    NSLog(@"Тип фигуры: Прямоугольник");
    NSLog(@"Ширина: %.2f", self.width);
    NSLog(@"Высота: %.2f", self.height);
    NSLog(@"Площадь: %.2f", [self calculateArea]);
    NSLog(@"Периметр: %.2f", [self calculatePerimeter]);
}

@end

// Класс круга
@interface Circle : Figure

@property float radius;

@end

@implementation Circle

- (float)calculateArea {
    // Формула расчета площади круга
    return M_PI * self.radius * self.radius;
}

- (float)calculatePerimeter {
    // Формула расчета периметра круга
    return 2 * M_PI * self.radius;
}

- (void)printInfo {
    // Вывод информации о круге
    NSLog(@"Тип фигуры: Круг");
    NSLog(@"Радиус: %.2f", self.radius);
    NSLog(@"Площадь: %.2f", [self calculateArea]);
    NSLog(@"Периметр: %.2f", [self calculatePerimeter]);
}

@end

// Класс треугольника
@interface Triangle : Figure

@property float side1;
@property float side2;
@property float side3;

@end

@implementation Triangle

- (float)calculateArea {
    // Формула расчета площади треугольника по формуле Герона
    float p = [self calculatePerimeter] / 2;
    return sqrtf(p * (p - self.side1) * (p - self.side2) * (p - self.side3));
}

- (float)calculatePerimeter {
    // Формула расчета периметра треугольника
    return self.side1 + self.side2 + self.side3;
}

- (void)printInfo {
    // Вывод информации о треугольнике
    NSLog(@"Тип фигуры: Треугольник");
    NSLog(@"Сторона 1: %.2f", self.side1);
    NSLog(@"Сторона 2: %.2f", self.side2);
    NSLog(@"Сторона 3: %.2f", self.side3);
    NSLog(@"Площадь: %.2f", [self calculateArea]);
    NSLog(@"Периметр: %.2f", [self calculatePerimeter]);
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание массива из трех фигур
        NSMutableArray *figures = [[NSMutableArray alloc] init];
        
        // Создание прямоугольника
        Rectangle *rectangle = [[Rectangle alloc] init];
        rectangle.width = 5;
        rectangle.height = 3;
        [figures addObject:rectangle];
        
        // Создание круга
        Circle *circle = [[Circle alloc] init];
        circle.radius = 4;
        [figures addObject:circle];
        
        // Создание треугольника
        Triangle *triangle = [[Triangle alloc] init];
        triangle.side1 = 3;
        triangle.side2 = 4;
        triangle.side3 = 5;
        [figures addObject:triangle];
        
        // Вывод информации о фигурах
        for (Figure *figure in figures) {
            [figure printInfo];
            NSLog(@"--------------------------");
        }
    }
    return 0;
}

