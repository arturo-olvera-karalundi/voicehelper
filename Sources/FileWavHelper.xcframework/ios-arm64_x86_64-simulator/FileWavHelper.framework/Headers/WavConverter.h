//
//  WavConverter.h
//  Enrolador Banjercito
//
//  Created by Jose Arturo Olvera Paulino on 2/27/24.
//

#import <Foundation/Foundation.h>


@class WavConverter;

@interface WavConverter : NSObject
    +(NSData*) addWavHeader:(NSData*) wav;
@end

