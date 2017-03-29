/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author oussama
 */
public class MethodesUtilBd 
{
        Session ses ;
        Transaction tc ;

    public MethodesUtilBd() 
    {
         ses = HibernateUtil.getSessionFactory().getCurrentSession();
         tc = ses.beginTransaction() ;
    }
        
        
        
    public HashMap<Integer,ArrayList<PoLine>> GetPos(int user_id)
    {   
        HashMap<Integer,ArrayList<PoLine>> list_Po=new HashMap<>();
        Query q =ses.createQuery("from PoLine");
        ArrayList<PoLine> polines =(ArrayList<PoLine>)q.list();
        
        
        for(PoLine p:polines)
        {      
            if(p.getId().getIdUser()==user_id)
            {
                    //get the po id from the line
                    String po_number=p.getId().getNumPo();
                    ArrayList<PoLine> po_to_add=new ArrayList<>();
                    for(PoLine p2:polines)
                    {
                        
                        //if the list doesn't contain the Po 
                        //add all the lines of the new Po
                       if(po_number.equalsIgnoreCase(p2.getId().getNumPo())&&(!list_Po.containsKey(Integer.parseInt(po_number))))
                       {
                           
                           po_to_add.add(p2);
                           

                       }
                    }
                    if(!list_Po.containsKey(Integer.parseInt(po_number)))  
                    {
                        list_Po.put(Integer.parseInt(po_number), po_to_add);
                    }
            }
        }
        


        return list_Po;
    }
           
}
