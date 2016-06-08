//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString *)solveTrivia {
    
    NSDictionary *statesAndCapitals = @{@"Alabama" : @"Montgomery",
                                        @"Alaska" : @"Juneau",
                                        @"Arizona"  : @"Phoenix",
                                        @"Arkansas" : @"Little Rock",
                                        @"California" : @"Sacramento",
                                        @"Colorado" : @"Denver",
                                        @"Connecticut" : @"Hartford",
                                        @"Delaware" : @"Dover",
                                        @"Florida" : @"Tallahassee",
                                        @"Georgia" : @"Atlanta",
                                        @"Hawaii" :  @"Honolulu",
                                        @"Idaho" : @"Boise",
                                        @"Illinois" : @"Springfield",
                                        @"Indiana" : @"Indianapolis",
                                        @"Iowa" : @"Des Moines",
                                        @"Kansas" : @"Topeka",
                                        @"Kentucky" : @"Frankfort",
                                        @"Louisiana" : @"Baton Rouge",
                                        @"Maine" : @"Augusta",
                                        @"Maryland" : @"Annapolis",
                                        @"Massachusetts" : @"Boston",
                                        @"Michigan" : @"Lansing",
                                        @"Minnesota" : @"St. Paul",
                                        @"Mississippi" : @"Jackson",
                                        @"Missouri" : @"Jefferson City",
                                        @"Montana" : @"Helena",
                                        @"Nebraska" :  @"Lincoln",
                                        @"Nevada" : @"Carson City",
                                        @"New Hampshire" : @"Concord",
                                        @"New Jersey" : @"Trenton",
                                        @"New Mexico" : @"Santa Fe",
                                        @"New York" : @"Albany",
                                        @"North Carolina" : @"Raleigh",
                                        @"North Dakota" : @"Bismarck",
                                        @"Ohio" : @"Columbus",
                                        @"Oklahoma" : @"Oklahoma City",
                                        @"Oregon" : @"Salem",
                                        @"Pennsylvania" : @"Harrisburg",
                                        @"Rhode Island" : @"Providence",
                                        @"South Carolina" : @"Columbia",
                                        @"South Dakota" : @"Pierre",
                                        @"Tennessee" : @"Nashville",
                                        @"Texas"  : @"Austin",
                                        @"Utah" : @"Salt Lake City",
                                        @"Vermont" : @"Montpelier",
                                        @"Virginia" : @"Richmond",
                                        @"Washington" : @"Olympia",
                                        @"West Virginia" : @"Charleston",
                                        @"Wisconsin" : @"Madison",
                                        @"Wyoming" : @"Cheyenne"};
    
    NSArray *states = [statesAndCapitals allKeys];
    NSArray *capitals = [statesAndCapitals allValues];
    NSLog(@"states: %@", states);
    NSLog(@"capitals: %@", capitals);
    
    // NSLog(@"Array: %@", nameLetterByLetter);
    
    for (NSUInteger i =0; i < [states count]; i++) {
        NSMutableArray *stateNameLetterByLetter = [[NSMutableArray alloc]init];
        NSMutableArray *capitalNameLetterByLetter = [[NSMutableArray alloc]init];
        BOOL isThereAMatch = YES;
        
        for (NSUInteger s=0; s< [states[i] length]; s++) {
            NSString *stateByLetter = states[i];
            [stateNameLetterByLetter addObject:[stateByLetter.lowercaseString substringWithRange:NSMakeRange(s, 1)]]; //Take each state and temporarily store in a mutable array, letter by letter.
            NSLog(@"Array of state letters: %@", stateNameLetterByLetter);
        }
        
        for (NSUInteger c=0; c< [capitals[i] length]; c++) {
            NSString *capitalByLetter = capitals[i];
            [capitalNameLetterByLetter addObject:[capitalByLetter.lowercaseString substringWithRange:NSMakeRange(c, 1)]]; //Take each capital and store in mutable array letter by letter
            NSLog(@"Array of capital letters: %@", capitalNameLetterByLetter);
        }
        
        
        //        for (NSString *state in states) {
        //Make a new loop her to iterate letter by letter
        
        for (NSUInteger s=0; s< [stateNameLetterByLetter count]; s++) { // For each letter in the State name array check if it is equal to
            
            for (NSString *letterInCap in capitalNameLetterByLetter ) {
                
                if ([stateNameLetterByLetter[s] isEqualToString:letterInCap])
                    isThereAMatch = NO;
                //                    NSLog(@"Capital letter: %@", capitalNameLetterByLetter[i]);
                //                    NSLog(@"Capital that does not contain letter in state is: %@", stateNameLetterByLetter);
                //                    NSString *answer = [capitalNameLetterByLetter componentsJoinedByString:@","];
                //                    NSLog(@"Capital name: %@", answer);
                //
                
                
                //    NSLog(@"State is: %@", state);
            }}
        if (isThereAMatch) {
            return states[i];
        }
    }
    //NSLog(@"Check array of states: %@", stateNameLetterByLetter);
    //NSLog(@"Check array of capitals: %@", capitalNameLetterByLetter);
    //return states[i];
    
    
    
    //NSLog(@"Check array of states: %@", stateNameLetterByLetter);
    //NSLog(@"Check array of capitals: %@", capitalNameLetterByLetter);
    
    return @"No match found.";
}
@end



//        if ([capitals[i] rangeOfString:nameLetterByLetter[i]].location == NSNotFound) {
//            NSLog(@"string does not contain that letter");
//            return capitals[i];
//        } else {
//            NSLog(@"capital contains that letter");
//        }


//        unichar buffer[len+1];
//
//        [states[i] getCharacters:buffer range:NSMakeRange(0, len)];
//        NSLog(@"getCharacters:range: with unichar buffer");
//
//        for (NSUInteger c = 0; c < len; c++) {
//
//            //if capitals[i] contains buffer[i]
//            NSLog(@"%C", buffer[c]);
//        }
