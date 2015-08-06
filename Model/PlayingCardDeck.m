//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by GOUDJO Pierre on 06/08/15.
//  Copyright (c) 2015 GOUDJO Pierre. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

-(instancetype)init
{
    self = [super init];

    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 0; rank <= [PlayingCard maxRank]; rank++ ) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }

    return self;
}

@end
