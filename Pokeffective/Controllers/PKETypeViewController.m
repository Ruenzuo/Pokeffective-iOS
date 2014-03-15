//
//  PKETypeViewController.m
//  Pokeffective
//
//  Created by Renzo Crisóstomo on 08/03/14.
//  Copyright (c) 2014 Renzo Crisóstomo. All rights reserved.
//

#import "PKETypeViewController.h"
#import "PKETypeCell.h"
#import "PKEPokemonManager.h"

@interface PKETypeViewController ()

@end

@implementation PKETypeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return TOTAL_POKEMON_TYPES;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TypeCell";
    PKETypeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier
                                                                  forIndexPath:indexPath];
    [self configureTableViewCell:cell
                    forIndexPath:indexPath];
    return cell;
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [[PKEPokemonManager sharedManager] setFilteringPokemonType:[indexPath row] + 1];
    [[self navigationController] popViewControllerAnimated:YES];
}

#pragma mark - Private Methods

- (void)configureTableViewCell:(PKETypeCell *)tableViewCell
                  forIndexPath:(NSIndexPath *)indexPath
{
    [[tableViewCell contentView] setBackgroundColor:[UIColor clearColor]];
    [[tableViewCell lblName] setText:[[PKEPokemonManager sharedManager] nameForType:[indexPath row] + 1]];
    [tableViewCell addBackgroundLayersWithColor:[[PKEPokemonManager sharedManager] colorForType:[indexPath row] + 1]];
}

@end
