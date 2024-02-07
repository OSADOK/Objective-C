//
//  AppDelegate.m
//  HomeWork_7
//
//  Created by Славон Еремин on 07.02.2024.
//


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.viewController1 = [[ViewController1 alloc] init];
    self.viewController2 = [[ViewController2 alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.viewController1;
    [self.window makeKeyAndVisible];
    
    return YES;
}
