//
//  Dragon.h
//  DragonFashion
//
//  Created by Jonathan Kilgore on 1/19/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dragon : NSObject

@property NSString *fullName;
@property NSString *swag;


//copied from Dragon.m file to call the custom method created
-(instancetype)initWithFullName:(NSString *)fullName andSwag:(NSString *)swag;

@end
