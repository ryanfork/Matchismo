//
//  PlayingCard.h
//  Matchismo
//
//  Created by Ryan Fork on 11/2/13.
//  Copyright (c) 2013 Ryan's App House. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
