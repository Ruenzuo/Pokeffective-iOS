//
//  PKEViewControllerHierarchyHelper.m
//  Pokeffective
//
//  Created by Renzo Crisóstomo on 29/03/14.
//  Copyright (c) 2014 Renzo Crisóstomo. All rights reserved.
//

#import "PKEViewControllerHierarchyHelper.h"

@interface PKEViewControllerHierarchyHelper ()

+ (UIViewController*)topViewControllerWithRootViewController:(UIViewController*)rootViewController;

@end

@implementation PKEViewControllerHierarchyHelper

+ (UIViewController*)topViewController
{
    return [self topViewControllerWithRootViewController:[UIApplication sharedApplication].keyWindow.rootViewController];
}

+ (UIViewController*)topViewControllerWithRootViewController:(UIViewController*)rootViewController
{
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabBarController = (UITabBarController *)rootViewController;
        return [self topViewControllerWithRootViewController:[tabBarController selectedViewController]];
    } else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)rootViewController;
        return [self topViewControllerWithRootViewController:[navigationController visibleViewController]];
    } else if (rootViewController.presentedViewController) {
        UIViewController *presentedViewController = [rootViewController presentedViewController];
        return [self topViewControllerWithRootViewController:presentedViewController];
    } else {
        return rootViewController;
    }
}

@end
