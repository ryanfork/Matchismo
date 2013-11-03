//
//  PlayingCard.m
//  Matchismo
//
//  Created by Ryan Fork on 11/2/13.
//  Copyright (c) 2013 Ryan's App House. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (NSString *) contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+ (NSArray *)validSuits;
{
    return @[@"♠️",@"♣️",@"♥️",@"♦️"];
}

- (void)setSuit:(NSString *)suit
{
    if ([PlayingCard validSuits] containsObject:suit) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

@end
