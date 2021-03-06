//
//  PKEPokemon.h
//  Pokeffective
//
//  Created by Renzo Crisóstomo on 08/03/14.
//  Copyright (c) 2014 Renzo Crisóstomo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FMResultSet;

@interface PKEPokemon : MTLModel <MTLManagedObjectSerializing>

@property (nonatomic, assign) NSUInteger identifier;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) NSUInteger pokedexNumber;
@property (nonatomic, assign) PKEPokemonType firstType;
@property (nonatomic, assign) PKEPokemonType secondType;
@property (nonatomic, assign) NSNumber *isEvolution;

@property (nonatomic, strong) NSSet *moves;

+ (PKEPokemon *)createPokemonWithResultSet:(FMResultSet *)resultSet;

@end
