/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model;

/**
 *
 * @author Gift Mashiya
 */
public class PasswordValidator implements PasswordValidatorInterface{

    @Override
    public boolean isPasswordValid(String pswd) {
     boolean isValid = false;
     if(isThePasswordValid(pswd)){
         isValid = true ;
        
     }
    return isValid;}

    private boolean isThePasswordValid(String pswd) {
        char charAtIndex;
        boolean isValid=false;
        int cntLetters = 0 ,cntDigits = 0 , cntSpecialChars = 0;
        
        if(pswd.length() >= MINIMUM_LENGTH){
            for(int i =0 ; i < pswd.length() ; i++){
             charAtIndex = pswd.charAt(i);
             if(Character.isLetter(charAtIndex)){
                 cntLetters++;
             }else if(Character.isDigit(charAtIndex)){
                 cntDigits++;
             }else{
                 cntSpecialChars++;
             }
            }
           if(cntLetters>= THRESHOLD && cntDigits >= THRESHOLD && cntSpecialChars>=THRESHOLD ){
               isValid = true;
           } 
        }
    return isValid;}
    
}
