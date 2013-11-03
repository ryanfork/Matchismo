//
//  Deck.h
//  Matchismo
//
//  Created by Ryan Fork on 11/2/13.
//  Copyright (c) 2013 Ryan's App House. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card* )drawRandomCard;

@end
