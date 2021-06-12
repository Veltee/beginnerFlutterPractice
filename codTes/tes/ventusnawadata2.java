import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

class ventusnawadata2{
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
    
        System.out.print("Input Families quantity: ");
        int Families = scan.nextInt();
        ArrayList<Integer> Familiaq = new ArrayList<Integer>();
        ArrayList<Integer> Busses = new ArrayList<Integer>();


        for(int i =0; i< Families; i++){
            System.out.print("Input number of each family member, family number "+ (i+1) +" ? ");
            int familyquantity = scan.nextInt();
            Familiaq.add(familyquantity);           
        }

        Collections.sort(Familiaq, Collections.reverseOrder());
        
        for(int i = 0; i<Familiaq.size();i++){
            if (Familiaq.get(i) ==4){
                Busses.add(1);
            }else if(Familiaq.get(i) > 4){
                final int smol = Familiaq.get(i) - 4;
                    if (smol == 4){
                        Busses.add(1);
                        Busses.add(1);
                    }else if(smol <4){
                        int cs = smol + Familiaq.get(i+1);
                        if(cs <= 4){
                            Busses.add(1);
                            i++;
                        }else if(cs == 8){
                            Busses.add(1);
                            Busses.add(1);
                            i++;
                        }else if(cs > 4 && cs != 8 && cs < 8){
                            Busses.add(1);
                            Busses.add(1);
                            i++;
                        }else if(cs > 8){
                            int csp = cs - 8;

                        }
                    }

            }else if(Familiaq.get(i) <4 ){
                int combinee = Familiaq.get(i) + Familiaq.get(i+1);
                if (combinee<=4){
                    Busses.add(1);
                    i++;
                }else if (combinee > 4){
                    int therest = combinee - 4;
                    if (therest < 4){
                        Busses.add(1);
                    }
                }
            }
        }

        System.out.println(Busses.size());

    }

}

