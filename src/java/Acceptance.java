
import Business.Po;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;

import org.hibernate.Session;
import org.hibernate.Transaction;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author 21511543
 */
public class Acceptance {

    public static void main(String[] args) {
        /*----- Ouverture de la session et de la transaction -----*/
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction t = session.beginTransaction();

        List<Object[]> l = session.createSQLQuery("SELECT PL.PO_LINE, PL.PO, PL.DATE_MODIF, PL.QUANTITY_REQUEST,\n"
                + "PL.QUANTITY_PROMISED, PL.QUANTITY_RECEIVED, PL.UNIT_PRICE, PL.TOTAL_PRICE,\n"
                + "PL.UNIT_PRICE_ORIGINAL, PL.LINE_COMMENT, PL.STATUS, PL.REQUEST_DATE, \n"
                + "PL.PROMISE_DATE\n"
                + "FROM `USER` as US, PO_LINE as PL, PO\n"
                + "WHERE PO.PO=PL.PO\n"
                + "AND PO.ID_SUPPLIER=US.ID_SUPPLIER\n"
                + "AND US.ID_USER='1'\n"
                + "AND Upper(PL.STATUS) in ('NEW ORDER PUBLISHED','CUSTOMER CHANGE REQUEST')\n"
                + "AND PL.DATE_MODIF = (SELECT MAX(PL2.DATE_MODIF)\n"
                + "FROM PO_LINE as PL2\n"
                + "WHERE PL2.PO=PL.PO\n"
                + "AND PL2.PO_LINE=PL.PO_LINE);").list();

        for (Object[] entity : l) {
            System.out.println("caca");
            System.out.println(entity[0]);
            System.out.println("pipi");

        }

    }
}
