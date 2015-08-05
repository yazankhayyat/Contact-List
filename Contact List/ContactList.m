//
//  ContactList.m
//  Contact List
//
//  Created by Yazan Khayyat on 2015-08-05.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _list = [[NSMutableArray alloc] init];
    }
    return self;
    
}

-(void)addContact:(Contact *)newContact {
    [self.list addObject:newContact];
}

-(void)displayContact {
    for (int i = 0; i < self.list.count; i++) {
        Contact *contact = [self.list objectAtIndex:i];
        NSLog(@"%i contact name is: %@\n contact email is: %@",i, contact.name, contact.email);
        
    }
    
    
}
@end
