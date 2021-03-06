//
//  PKECollectionViewCell.h
//  Pokeffective
//
//  Created by Renzo Crisóstomo on 08/03/14.
//  Copyright (c) 2014 Renzo Crisóstomo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PKECollectionViewCell : UICollectionViewCell

- (void)addBackgroundLayersWithColor:(UIColor *)color;
- (void)addBackgroundLayersWithFirstColor:(UIColor *)firstColor
                              secondColor:(UIColor *)secondColor;

@end
