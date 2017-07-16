//
//  DFRPrivateHeader.m
//  Muse
//
//  Created by Marco Albera on 13/07/2017.
//  Copyright © 2017 Edge Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DFRPrivateHeader.h"

@implementation NSTouchBarItem (DFRAccess)

- (void)addToControlStrip {
    [NSTouchBarItem addSystemTrayItem:self];
    
    [self toggleControlStripPresence:true];
}

- (void)toggleControlStripPresence:(BOOL)present {
    DFRElementSetControlStripPresenceForIdentifier(self.identifier,
                                                   present);
}

@end
