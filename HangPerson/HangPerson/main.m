//
//  main.m
//  HangPerson
//
//  Created by Michael Kavouras on 6/15/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Hey, Let's play Hang Person");
        
        // Secret Word
        char secretWord[] = "faith";
        
        
        // Current state of guessed word
        char guessedWord[] = "_____";
        
        // Max of wrong attempts
        int maxNumberOfWrongAttempts = 4;
        
        int wrongAttempts = 0;
        
        // Max right attempts
        int maxNumberOfRightAttempts = 5;
        
        int rightAttempts = 0;
        
        // Begin the game
        
        
        printf("Hint Word: believe \n");
        // Here's a hint
        
        while (true) {
            
            // Enter a letter
            char userGuess;
            
            printf("Guess a letter \n\n");
            scanf("%c", &userGuess);
            
            //            printf("%c \n", userGuess);
            fpurge(stdin);
            
            //            int i = userGuess;
            //            int count = sizeof(secretWord);
            
            int match = 0;
            for (int i = 0; i < strlen(secretWord); i++) {
                if (userGuess == secretWord[i]) {
                    guessedWord[i] = userGuess;
                    match = 1;
                }
                //
                //            }for (int i = 0; i < strlen(guessedWord); i++) {
                //                  if (userGuess != secretWord[i]) {
                //                  guessedWord[i] = userGuess;
                //                  match = 0;
                //                }
            }
            if (match == 0) {
                printf("\n no match, sorry try again. \n");
                wrongAttempts++; //
            }
            if (match != 0) {
                printf("\n Great, You have a match!");
                rightAttempts++;
                
                
                if (wrongAttempts > maxNumberOfWrongAttempts) {
                    printf("Sorry dude, you lose");
                    break;
                }
                if (rightAttempts == maxNumberOfRightAttempts) {
                    printf("CONGRATS, YOU WIN!\n");
                    break;
                }
                printf("\n");
                for (int i = 0; i < strlen(secretWord); i++) {
                    printf("%c ", guessedWord[i]);
                }
                printf("\n");
                
                
            }
                
            }
        
        return 0;
    }
}