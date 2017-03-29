/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.HistoryPO;

import Business.MethodesUtilBd;
import Business.PoLine;
import java.util.ArrayList;
import java.util.HashMap;

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
        HashMap<Integer,ArrayList<PoLine>> list=bd.GetPos(2);
        
    }
    
}
