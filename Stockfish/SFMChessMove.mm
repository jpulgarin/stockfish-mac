//
//  SFMChessMove.m
//  Stockfish
//
//  Created by Daylen Yang on 1/8/14.
//  Copyright (c) 2014 Daylen Yang. All rights reserved.
//

#import "SFMChessMove.h"

#include "../Chess/move.h"

@implementation SFMChessMove

- (id)initWithMove:(Move)move undoInfo:(UndoInfo)undoInfo
{
    self = [super init];
    if (self) {
        self.move = move;
        self.undoInfo = undoInfo;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithCString:move_to_string(self.move).c_str() encoding:NSUTF8StringEncoding];
}

@end
