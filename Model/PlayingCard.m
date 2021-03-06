//
//  PlayingCard.m
//  Matchismo
//
//  Created by GOUDJO Pierre on 02/08/15.
//  Copyright (c) 2015 GOUDJO Pierre. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

-(NSString *)content
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

-(int)match:(NSArray *)otherCards
{
    int score = 0;

    if (otherCards.count == 1) {
        id card = [otherCards firstObject];
        if ([card isKindOfClass:[PlayingCard class]]) {
            PlayingCard *otherCard = (PlayingCard *)card;
            if (otherCard.rank == self.rank) {
                score = 4;
            } else if ([otherCard.suit isEqualToString:self.suit]) {
                score = 1;
            }
        }



    }

    return score;
}

-(NSString *)suit
{
    return (_suit)? _suit: @"?";
}



+(NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"J", @"Q", @"K"];
}

+(NSArray *)validSuits
{
    return @[@"♣️", @"♠️", @"♥️", @"♦️"];
}

+(NSInteger)maxRank
{
    return [[PlayingCard rankStrings] count] - 1;
}

-(void)setRank:(NSInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
