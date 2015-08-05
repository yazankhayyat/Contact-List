//
//  main.m
//  Contact List
//
//  Created by Yazan Khayyat on 2015-08-05.
//  Copyright (c) 2015 Yazan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ContactList *newContactList = [[ContactList alloc] init];
        
        while (true) {
            
            InputCollector *collector = [[InputCollector alloc] init];
            NSString *answer = [collector inputForPrompt:@"What would you like to do next?\n New - Create a new contact list\n List - List all contacts \n Quit - Exit"];
             NSLog(@"%@", answer);

        
           if ([answer isEqualToString:@"quit\n"])
            {
                break;
            }
           else if ([answer isEqualToString:@"new\n"]) {

               Contact *contact1 = [[Contact alloc]init];
               NSString *answerName = [collector inputForPrompt:@"Please enter the name"];
               contact1.name = answerName;

               NSLog(@"%@\n", contact1.name);
               
               NSString *answerEmail = [collector inputForPrompt:@"Please enter the email address"];
               contact1.email = answerEmail;
               NSLog(@"%@\n", contact1.email);
               
               [newContactList addContact:contact1];
    
           }
            
           else if ([answer isEqualToString:@"list\n"]) {
               [newContactList displayContact];
           }
        }
        
    
        
    
        
    }
    return 0;
}
