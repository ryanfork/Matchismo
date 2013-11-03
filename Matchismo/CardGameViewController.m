//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Ryan Fork on 11/2/13.
//  Copyright (c) 2013 Ryan's App House. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *playingCardDeck;

@end

@implementation CardGameViewController

- (PlayingCardDeck *)playingCardDeck
{
    if (!_playingCardDeck) {
        _playingCardDeck = [[PlayingCardDeck alloc] init];
    }
    
    return _playingCardDeck;
}

- (void)setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender {
    if (!sender.isSelected) {
        NSLog(@"Draw card");
        Card *card = [self.playingCardDeck drawRandomCard];
        
        NSLog(@"Card: %@", card.contents);
        [sender setTitle:card.contents forState:UIControlStateSelected];
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        self.flipCount++;
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
    }
    
    sender.selected = !sender.isSelected;
}

@end
