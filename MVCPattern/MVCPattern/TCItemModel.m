//
//  TCItemModel.m
//  MVCPattern
//
//  Created by Marvin Labrador on 10/20/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCItemModel.h"

@implementation TCItemModel


-(id)initWithDictionary: (NSDictionary *)dict
{
    self = [super init];
    
    self.itemName = [dict objectForKey:@"itemName"];
    self.itemDescription = [dict objectForKey:@"description"];
    self.itemCategory = [dict objectForKey:@"itemCategory"];
    
    return self;

}
@end


