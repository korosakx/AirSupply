/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.HistoryPO;

import Business.MethodesUtilBd;

/**
 *
 * @author oussama
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) 
    {
        // TODO code application logic here
        MethodesUtilBd bd=new MethodesUtilBd();
        bd.GetPos(2);
        
    }
    
}
