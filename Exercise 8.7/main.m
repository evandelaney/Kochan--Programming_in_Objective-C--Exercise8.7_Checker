//
//  Copyright (c) 2013 Fish Hook LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Rectangle *myRectangle = [[Rectangle alloc] init];
        XYPoint *origin = [[XYPoint alloc] init];
        [origin setX:0.0 andY:0.0];
        [myRectangle setOrigin:origin];
        [myRectangle setWidth:12.0];
        [myRectangle setHeight:6.0];
        
        Rectangle *upperRightCornerIntersect = [[Rectangle alloc] init];
        XYPoint *o1 = [[XYPoint alloc] init];
        [o1 setX:9.0 andY:3.0];
        [upperRightCornerIntersect setOrigin:o1];
        [upperRightCornerIntersect setWidth:12.0];
        [upperRightCornerIntersect setHeight:6.0];
        
        Rectangle *checkUpperRight = [myRectangle intersect:upperRightCornerIntersect];
        if ([[checkUpperRight origin] x] == 9.0 &&
            [[checkUpperRight origin] y] == 3.0 &&
            [checkUpperRight width] == 3.0 &&
            [checkUpperRight height] == 3.0) {
            NSLog(@"Test #1: CORRECT");
        }
        else {
            NSLog(@"Test #1: FAIL");
        }
        
        Rectangle *lowerRightCornerIntersect = [[Rectangle alloc] init];
        XYPoint *o2 = [[XYPoint alloc] init];
        [o2 setX:11.0 andY:-4.0];
        [lowerRightCornerIntersect setOrigin:o2];
        [lowerRightCornerIntersect setWidth:12.0];
        [lowerRightCornerIntersect setHeight:6.0];
        
        Rectangle *checkLowerRight = [myRectangle intersect:lowerRightCornerIntersect];
        if ([[checkLowerRight origin] x] == 11.0 &&
            [[checkLowerRight origin] y] == 0.0 &&
            [checkLowerRight width] == 1.0 &&
            [checkLowerRight height] == 2.0) {
            NSLog(@"Test #2: CORRECT");
        }
        else {
            NSLog(@"Test #2: FAIL");
        }
        
        Rectangle *upperLeftCornerIntersect = [[Rectangle alloc] init];
        XYPoint *o3 = [[XYPoint alloc] init];
        [o3 setX:-3.0 andY:1.0];
        [upperLeftCornerIntersect setOrigin:o3];
        [upperLeftCornerIntersect setWidth:12.0];
        [upperLeftCornerIntersect setHeight:6.0];
        
        Rectangle *checkUpperLeft = [myRectangle intersect:upperLeftCornerIntersect];
        if ([[checkUpperLeft origin] x] == 0.0 &&
            [[checkUpperLeft origin] y] == 1.0 &&
            [checkUpperLeft width] == 9.0 &&
            [checkUpperLeft height] == 5.0) {
            NSLog(@"Test #3: CORRECT");
        }
        else {
            NSLog(@"Test #3: FAIL");
        }
        
        Rectangle *lowerLeftCornerIntersect = [[Rectangle alloc] init];
        XYPoint *o4 = [[XYPoint alloc] init];
        [o4 setX:-6.0 andY:-2.0];
        [lowerLeftCornerIntersect setOrigin:o4];
        [lowerLeftCornerIntersect setWidth:12.0];
        [lowerLeftCornerIntersect setHeight:6.0];
        
        Rectangle *checkLowerLeft = [myRectangle intersect:lowerLeftCornerIntersect];
        if ([[checkLowerLeft origin] x] == 0.0 &&
            [[checkLowerLeft origin] y] == 0.0 &&
            [checkLowerLeft width] == 6.0 &&
            [checkLowerLeft height] == 4.0) {
            NSLog(@"Test #4: CORRECT");
        }
        else {
            NSLog(@"Test #4: FAIL");
        }
        
        Rectangle *fullyEnclosedIntersect = [[Rectangle alloc] init];
        XYPoint *o5 = [[XYPoint alloc] init];
        [o5 setX:2.0 andY:1.0];
        [fullyEnclosedIntersect setOrigin:o5];
        [fullyEnclosedIntersect setWidth:8.0];
        [fullyEnclosedIntersect setHeight:4.0];
        
        Rectangle *checkEnclosed = [myRectangle intersect:fullyEnclosedIntersect];
        if ([[checkEnclosed origin] x] == 2.0 &&
            [[checkEnclosed origin] y] == 1.0 &&
            [checkEnclosed width] == 8.0 &&
            [checkEnclosed height] == 4.0) {
            NSLog(@"Test #5: CORRECT");
        }
        else {
            NSLog(@"Test #5: FAIL");
        }
        
        Rectangle *noIntersect = [[Rectangle alloc] init];
        XYPoint *o6 = [[XYPoint alloc] init];
        [o6 setX:13.0 andY:7.0];
        [noIntersect setOrigin:o6];
        [noIntersect setWidth:12.0];
        [noIntersect setHeight:6.0];
        
        Rectangle *checkNo = [myRectangle intersect:noIntersect];
        if ([[checkNo origin] x] == 0.0 &&
            [[checkNo origin] y] == 0.0 &&
            [checkNo width] == 0.0 &&
            [checkNo height] == 0.0) {
            NSLog(@"Test #6: CORRECT");
        }
        else {
            NSLog(@"Test #6: FAIL");
        }
        
        Rectangle *sharedLeftSide = [[Rectangle alloc] init];
        XYPoint *o7 = [[XYPoint alloc] init];
        [o7 setX:-12.0 andY:0.0];
        [sharedLeftSide setOrigin:o7];
        [sharedLeftSide setWidth:12.0];
        [sharedLeftSide setHeight:6.0];
        
        Rectangle *checkLeftSide = [myRectangle intersect:sharedLeftSide];
        if ([[checkLeftSide origin] x] == 0.0 &&
            [[checkLeftSide origin] y] == 0.0 &&
            [checkLeftSide width] == 0.0 &&
            [checkLeftSide height] == 0.0) {
            NSLog(@"Test #7: CORRECT");
        }
        else {
            NSLog(@"Test #7: FAIL");
        }
        
        Rectangle *sharedRightSide = [[Rectangle alloc] init];
        XYPoint *o8 = [[XYPoint alloc] init];
        [o8 setX:12.0 andY:0.0];
        [sharedRightSide setOrigin:o8];
        [sharedRightSide setWidth:12.0];
        [sharedRightSide setHeight:6.0];
        
        Rectangle *checkRightSide = [myRectangle intersect:sharedRightSide];
        if ([[checkRightSide origin] x] == 0.0 &&
            [[checkRightSide origin] y] == 0.0 &&
            [checkRightSide width] == 0.0 &&
            [checkRightSide height] == 0.0) {
            NSLog(@"Test #8: CORRECT");
        }
        else {
            NSLog(@"Test #8: FAIL");
        }
        
        Rectangle *sharedTopSide = [[Rectangle alloc] init];
        XYPoint *o9 = [[XYPoint alloc] init];
        [o9 setX:0.0 andY:6.0];
        [sharedTopSide setOrigin:o9];
        [sharedTopSide setWidth:12.0];
        [sharedTopSide setHeight:6.0];
        
        Rectangle *checkTopSide = [myRectangle intersect:sharedTopSide];
        if ([[checkTopSide origin] x] == 0.0 &&
            [[checkTopSide origin] y] == 0.0 &&
            [checkTopSide width] == 0.0 &&
            [checkTopSide height] == 0.0) {
            NSLog(@"Test #9: CORRECT");
        }
        else {
            NSLog(@"Test #9: FAIL");
        }
        
        Rectangle *sharedBottomSide = [[Rectangle alloc] init];
        XYPoint *o0 = [[XYPoint alloc] init];
        [o0 setX:0.0 andY:-6.0];
        [sharedBottomSide setOrigin:o0];
        [sharedBottomSide setWidth:12.0];
        [sharedBottomSide setHeight:6.0];
        
        Rectangle *checkBottomSide = [myRectangle intersect:sharedBottomSide];
        if ([[checkBottomSide origin] x] == 0.0 &&
            [[checkBottomSide origin] y] == 0.0 &&
            [checkBottomSide width] == 0.0 &&
            [checkBottomSide height] == 0.0) {
            NSLog(@"Test #10: CORRECT");
        }
        else {
            NSLog(@"Test #10: FAIL");
        }
        
        Rectangle *heightEnclosedIntersect = [[Rectangle alloc] init];
        XYPoint *o11 = [[XYPoint alloc] init];
        [o11 setX:-4.0 andY:1.0];
        [heightEnclosedIntersect setOrigin:o11];
        [heightEnclosedIntersect setWidth:8.0];
        [heightEnclosedIntersect setHeight:4.0];
        
        Rectangle *checkHeightEnclosed = [myRectangle intersect:heightEnclosedIntersect];
        if ([[checkHeightEnclosed origin] x] == 0.0 &&
            [[checkHeightEnclosed origin] y] == 1.0 &&
            [checkHeightEnclosed width] == 4.0 &&
            [checkHeightEnclosed height] == 4.0) {
            NSLog(@"Test #11: CORRECT");
        }
        else {
            NSLog(@"Test #11: FAIL");
        }
        
        Rectangle *widthEnclosedIntersect = [[Rectangle alloc] init];
        XYPoint *o12 = [[XYPoint alloc] init];
        [o12 setX:2.0 andY:-4.0];
        [widthEnclosedIntersect setOrigin:o12];
        [widthEnclosedIntersect setWidth:8.0];
        [widthEnclosedIntersect setHeight:6.0];
        
        Rectangle *checkWidthEnclosed = [myRectangle intersect:widthEnclosedIntersect];
        if ([[checkWidthEnclosed origin] x] == 2.0 &&
            [[checkWidthEnclosed origin] y] == 0.0 &&
            [checkWidthEnclosed width] == 8.0 &&
            [checkWidthEnclosed height] == 2.0) {
            NSLog(@"Test #12: CORRECT");
        }
        else {
            NSLog(@"Test #12: FAIL");
        }
        
    }
    return 0;
}

