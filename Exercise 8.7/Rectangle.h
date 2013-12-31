//
//  Copyright (c) 2013 Fish Hook LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;

@interface Rectangle : NSObject

@property float width;
@property float height;

-(XYPoint *)origin;
-(void)setOrigin:(XYPoint *)pt;

-(void)setWidth:(float)w andHeight:(float)h;

-(Rectangle *)intersect:(Rectangle *)inteRect;

@end
