/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package static_dynamic_stack;

/**
 *
 * @author KMV
 */
public class Static_dynamic_stack {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        staticstack s=new staticstack(3);
       
        int a=s.pop();
        
        System.out.println(""+a);
    }
    
}
