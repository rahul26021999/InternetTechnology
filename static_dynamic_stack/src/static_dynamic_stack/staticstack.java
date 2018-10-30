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
public class staticstack extends abstractstack{

    private int arr[];
    private int size;
    private int top;
    public staticstack(int s) {
        top=-1;
        size=s;
        arr=new int[s];
    }

   
    @Override
    void push(int a) {
        if(top==size-1)
        {
            System.out.println("OverFlow");
        }
        else{
            top++;
            arr[top]=a;
        }
    }

    @Override
    int pop() {
          int a;
        if(top==-1)
        {
            System.out.println("UnderFlow");
           return 0;
        }
        else{
            a=arr[top--];
            return a;
        }
        
    }

    @Override
    void display() {
        for(int i=top;i>=0;i--)
        {
            System.out.println("\n"+arr[i]);
        }
    }
    
}
