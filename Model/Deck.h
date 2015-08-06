//
//  Deck.h
//  Matchismo
//
//  Created by GOUDJO Pierre on 05/08/15.
//  Copyright (c) 2015 GOUDJO Pierre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;

-(Card *)drawRandomCard;

@end
