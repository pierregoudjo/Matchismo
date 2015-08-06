//
//  PlayingCard.h
//  Matchismo
//
//  Created by GOUDJO Pierre on 02/08/15.
//  Copyright (c) 2015 GOUDJO Pierre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSInteger rank;

+(NSArray *)validSuits;
+(NSInteger) maxRank;

@end
