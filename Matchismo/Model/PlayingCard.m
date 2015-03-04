//
//  PlayingCard.m
//  Matchismo
//
//  Created by Henrique Barros on 1/7/15.
//  Copyright (c) 2015 Henrique Barros. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit; //because we provide setter and getter
+ (NSArray *) validSuits {
    return @[@"♥︎",@"♦︎",@"♠︎",@"♣︎"];
}
-(void)setSuit:(NSString *)suit {
    if([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}
-(NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *)rankStrings {
    return @[@"?", @"A", @"2", @"3",
             @"4", @"5",@"6",@"7",@"8",@"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {
    return [[PlayingCard rankStrings] count] -1;
}

- (void)setRank:(NSUInteger)rank   {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}



@end
