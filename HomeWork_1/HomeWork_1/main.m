//
//  main.m
//  HomeWork_1
//
//  Created by Славон Еремин on 31.12.2023.
//

#import <Foundation/Foundation.h>
#import <math.h>
//Задание 1.

//В этом примере мы используем формулу дискриминанта для определения количества и значений корней уравнения. Если дискриминант больше 0, то уравнение имеет два различных решения, если дискриминант равен 0, то уравнение имеет одно решение, иначе уравнение не имеет действи

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Решение квадратного уравнения: x^2 – 8x + 12 = 0
        
        float a = 1;
        float b = -8;
        float c = 12;
        
        float discriminant = b * b - 4 * a * c;
        
        if (discriminant > 0) {
            float x1 = (-b + sqrtf(discriminant)) / (2 * a);
            float x2 = (-b - sqrtf(discriminant)) / (2 * a);
            
            NSLog(@"x1 = %f, x2 = %f", x1, x2);
        }
        else if (discriminant == 0) {
            float x = -b / (2 * a);
            NSLog(@"x = %f", x);
        }
        else {
            NSLog(@"The equation has no real solutions");
        }
        
        // Решение квадратного уравнения: 12x^2 – 4x + 2 = 0
        
        a = 12;
        b = -4;
        c = 2;
        
        discriminant = b * b - 4 * a * c;
        
        if (discriminant > 0) {
            float x1 = (-b + sqrtf(discriminant)) / (2 * a);
            float x2 = (-b - sqrtf(discriminant)) / (2 * a);
            
            NSLog(@"x1 = %f, x2 = %f", x1, x2);
        }
        else if (discriminant == 0) {
            float x = -b / (2 * a);
            NSLog(@"x = %f", x);
        }
        else {
            NSLog(@"The equation has no real solutions");
        }
        
        // Решение квадратного уравнения: x^2 – 100x - 2 = 0
        
        a = 1;
        b = -100;
        c = -2;
        
        discriminant = b * b - 4 * a * c;
        
        if (discriminant > 0) {
            float x1 = (-b + sqrtf(discriminant)) / (2 * a);
            float x2 = (-b - sqrtf(discriminant)) / (2 * a);
            
            NSLog(@"x1 = %f, x2 = %f", x1, x2);
        }
        else if (discriminant == 0) {
            float x = -b / (2 * a);
            NSLog(@"x = %f", x);
        }
        else {
            NSLog(@"The equation has no real solutions");
        }
        
    }
//Задание. 2 Создать программу, которая находит большее число среди 3-х чисел.
//Программа запрашивает у пользователя три числа и затем сравнивает их, выбирая наибольшее. Результат выводится на экран.

        int number1, number2, number3;
        
        NSLog(@"Введите три числа:");
        scanf("%d %d %d", &number1, &number2, &number3);
        
        int max = number1;
        
        if (number2 > max) {
            max = number2;
        }
        
        if (number3 > max) {
            max = number3;
        }
        
        NSLog(@"Наибольшее число: %d", max);
    
    return 0;
}
