//
//  Card.m
//  Matchismo
//
//  Created by GOUDJO Pierre on 02/08/15.
//  Copyright (c) 2015 GOUDJO Pierre. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards {
    int score = 0;

    for (Card *card in otherCards) {
        if ([self.content isEqualToString:card.content]) {
            score = 1;
        }
    }

    return score;
}
@end
