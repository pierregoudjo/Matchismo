//
//  Card.h
//  Matchismo
//
//  Created by GOUDJO Pierre on 02/08/15.
//  Copyright (c) 2015 GOUDJO Pierre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *content;
@property (nonatomic, getter=isMatched) BOOL matched;
@property (nonatomic, getter=isChosen) BOOL chosen;

-(int)match:(NSArray *)otherCards;
@end
