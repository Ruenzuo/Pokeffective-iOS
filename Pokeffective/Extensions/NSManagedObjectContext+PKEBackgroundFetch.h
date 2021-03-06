//
//  NSManagedObjectContext+BackgroundFetch.h
//  Pokeffective
//
//  Created by Renzo Crisóstomo on 15/03/14.
//  Copyright (c) 2014 Renzo Crisóstomo. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface NSManagedObjectContext (PKEBackgroundFetch)

- (void)PKE_executeFetchRequest:(NSFetchRequest *)request
                     completion:(ArrayCompletionBlock)completion;

@end
