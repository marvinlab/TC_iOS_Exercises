//
//  TCItemModel.h
//  MVCPattern
//
//  Created by Marvin Labrador on 10/20/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TCItemModel : NSObject

@property (nonatomic, retain) NSString *itemName;
@property (nonatomic, retain) NSString *itemDescription;
@property (nonatomic, retain) NSString *itemCategory;

-(id)initWithDictionary: (NSDictionary *)dict;


@end
