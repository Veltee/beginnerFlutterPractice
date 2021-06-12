import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

class ventusnawadata{
    public static void main(String args[])
    {
        Scanner scanner = new Scanner(System.in);  
        System.out.println("Enter a word: ");
        String a = scanner.nextLine();
        a = a.toLowerCase();

        char karakter = 0;
        List<Character> vowel = new ArrayList<>();
        List<Character> consonants = new ArrayList<>();


        for(int i = 0; i<a.length() ;i++){
            karakter = a.charAt(i);
                        
            if(karakter >= 'a' && karakter <= 'z') {
                if( checkVowel(karakter) ) {
                    vowel.add(karakter);
                } else {
                    consonants.add(karakter);
                } 
            }else{
                System.out.println("Only use a-z for word!");
            }
        }

        

        System.out.println("Vowel: " + vowel);
        System.out.println("Consonant: " + consonants);
    
        scanner.close();

    }

        public static boolean checkVowel(char ch){
            if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
            return true;
            return false;
        }
    }
