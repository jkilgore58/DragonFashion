//
//  Dragon.m
//  DragonFashion
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "Dragon.h"

@implementation Dragon

//custom initializer (instancetype) method
//don't forget to cply and paste in the Dragon.h file with a ';' not '{' to properly call the method
-(instancetype)initWithFullName:(NSString *)fullName andSwag:(NSString *)swag {
    self = [super init];
    
    if (self) {
        self.fullName = fullName;
        self.swag = swag;
    }
    
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"%@ is never fully dressed without %@", self.fullName, self.swag];
}

@end
