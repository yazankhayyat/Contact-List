//
//  ContactList.h
//  Contact List
//
//  Created by Yazan Khayyat on 2015-08-05.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *list;

-(void)addContact:(Contact *)newContact;

-(void)displayContact;


@end
