 #Write Python code for Guessing game /Hangman .
import random 
word_list = ['apple','word','file','blossom','danger','black','garden','chicken', 'nest','moon','zombie', 'yak','jet','forest','van','us']
def get_word() :
    word = random.choice(word_list)
    return word.upper()
    
def play(word) :
    word_complition = "_" * len(word)
    guessed = False
    guessed_letters = []
    guessed_word = []
    tries = 6
    print("Let's Play Hangman!")
    print(display_hangman(tries))
    print(word_complition)
    print("\n")
    while not guessed and tries > 0:
        guess = input("Please guess letter or a word:").upper()
        if len(guess) == 1 and guess.isalpha():
            if guess in word :
                print("You have already guessed the letter",guess)
                
            elif guess not in word :
                print(guess," is not in word!")
                tries -= 1
                guessed_letters.append(guess)
                
            else :
                print("Good job",guess,"is in the word")
                guessed_letters.append(guess)
                word_as_list = list(word_complition)
                indices = [i for i,letter in enumerate(word) if letter == guess]
                for index in indices :
                    word_as_list[index] = guess
                word_complition = "".join(word_as_list)
                if "_" not in word_complition:
                    guess  = True
            
        elif len(guess) == len(word) and guess.isalpha() :
            if guess in guessed_word :
                print("You  have already guessed the word",guess)
            elif guess != word :
                print(guess, "is not the word")
                tries -= 1
                guessed_word.append(guess)
            else :
                guessed = True
                word_complition = word
                        
        else :
            print("Not a valid guess:",guess)
            
        print(display_hangman(tries))
        print(word_complition)
        print("\n")
        
    if guessed:
        print("Congratulations! wordyou entered is correct!!!")
        
    else :
        print("Sorry! You ran out of time? the word is",word,". May be next time.")

def display_hangman(tries) :
    stages = [ """
                  |_____________
                  |       |
                  |       ●
                  |      /|\
                  |       |
                  |      / \
                  |_____________
               """,
                """
                  |_____________
                  |       |
                  |       ●
                  |      /|\
                  |       |
                  |      / 
                  |_____________
               """,
                """
                  |_____________
                  |       |
                  |       ●
                  |      /|\
                  |       |
                  |      
                  |_____________
               """,
                """
                  |_____________
                  |       |
                  |       ●
                  |      /|\
                  |       
                  |      
                  |_____________
               """,
                """
                  |_____________
                  |       |
                  |       ●
                  |      / \
                  |       
                  |      
                  |_____________
               """,
                """
                  |_____________
                  |       |
                  |       ●
                  |      /
                  |       
                  |      
                  |_____________
               """,
                """
                  |_____________
                  |       |
                  |       ●
                  |      
                  |       
                  |    
                  |_____________
               """
    ]
    return stages[tries]
      
        
       
  
  
def main() :
    word = get_word()
    play(word)
    while input("Play Again(Y/N):") == 'Y':
        word = get_word()
        play(word)
        
    
if __name__ == '__main__' :
    main()        
    
                
                  
           
                                 
                 
                
               
                  
        
               
                  
                 
     
                 
                  
                   
                  
          
      
                  
                  
                
                  
                     
                 
          
          
                  
                
                
                  
                   
                  
                 
               
                  
               
                      
            
                  
    

     
      
        
       
  
  
        
    

    
