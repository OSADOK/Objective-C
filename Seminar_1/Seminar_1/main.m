//
//  main.m
//  Seminar_1
//
//  Created by Славон Еремин on 31.12.2023.
//

#import <Foundation/Foundation.h>
////Создаем новый проект. Выбираем и объявляем переменную, которая будет хранитьзначение, квадрат числа которого будет вычисляться. Затем производим расчет и выводим результат в лог
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int number = 16;
        number *= number;
        NSLog(@"%d", number);
//        
//Дано некоторое сопоставление имени и числа. Для более корректного отображения такой информации необходимо вывести ее одной
//        строкой в консоль. Создадим 3 переменные с необходимыми значениями
//        
        int num1 = 12;
        int num2 = 10;
        int num3 = 7;
        
        NSLog(@"num1 = %d num2 = %d, num3 = %d",num1, num2, num3);
//Для создания такой программы используем возможности языка C. Для получения введенного числа применим функцию scanf(). Сначала создадим переменные, в которых будут храниться введенные значения
        
//        int num4, num5, num6;
//        scanf("%d", &num4);
//        scanf("%d", &num5);
//        scanf("%d", &num6);
//        NSLog(@"%d", num4 + num5 + num6);
        
//Создать программу калькулятор, которая будет применять к введенным числам различные арифметические операции, такие как сложение, вычитание, умножение, деление, среднее арифметическое
        
//        NSLog(@"%d", num4 - num5 - num6);
//        NSLog(@"%d", num4 * num5 * num6);
//        NSLog(@"%f", (double)num4 / (double)num5 / (double)num6);
        
//Улучшить программу: организовать вывод результата и переменных в консоль одной строкой
//        
//        NSLog(@"%d\n%d\n%f", num4 - num5 - num6, num4 * num5 * num6, (double)num4 / (double)num5 / (double)num6);
//        
//Создать программу, которая будет выводить список введенных пользователем значений циклами for, while и do-while
        
        char array[10];
        scanf("%s", array);
        NSString *inputString = [NSString stringWithCString:array encoding:NSUTF8StringEncoding];
//        for (int i = 0; i < inputString.length; i++) {
//            NSLog(@"%c", [inputString characterAtIndex:i]);
//        }
        int i = 0;
//        while (i < inputString.length){
//
//            NSLog(@"%c", [inputString characterAtIndex:i]);
//            i ++;
        do {
            NSLog(@"%c", [inputString characterAtIndex:i]);
            i++;
        }while (i < inputString.length);
        
    }
    return 0;
}


