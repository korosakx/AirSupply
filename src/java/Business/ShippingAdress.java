package Business;
// Generated 28 mars 2017 12:22:06 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * ShippingAdress generated by hbm2java
 */
@Entity
@Table(name="SHIPPING_ADRESS"
    ,catalog="db_21511543"
)
public class ShippingAdress  implements java.io.Serializable {


     private int idAdress;
     private String shippingName;
     private String shippingName2;
     private String shippingStreet;
     private String shippingZip;
     private String shippingCity;
     private String shippingCountry;
     private Set<Vmi> vmis = new HashSet<Vmi>(0);

    public ShippingAdress() {
    }

	
    public ShippingAdress(int idAdress) {
        this.idAdress = idAdress;
    }
    public ShippingAdress(int idAdress, String shippingName, String shippingName2, String shippingStreet, String shippingZip, String shippingCity, String shippingCountry, Set<Vmi> vmis) {
       this.idAdress = idAdress;
       this.shippingName = shippingName;
       this.shippingName2 = shippingName2;
       this.shippingStreet = shippingStreet;
       this.shippingZip = shippingZip;
       this.shippingCity = shippingCity;
       this.shippingCountry = shippingCountry;
       this.vmis = vmis;
    }
   
     @Id 

    
    @Column(name="ID_ADRESS", unique=true, nullable=false)
    public int getIdAdress() {
        return this.idAdress;
    }
    
    public void setIdAdress(int idAdress) {
        this.idAdress = idAdress;
    }

    
    @Column(name="SHIPPING_NAME", length=32)
    public String getShippingName() {
        return this.shippingName;
    }
    
    public void setShippingName(String shippingName) {
        this.shippingName = shippingName;
    }

    
    @Column(name="SHIPPING_NAME2", length=32)
    public String getShippingName2() {
        return this.shippingName2;
    }
    
    public void setShippingName2(String shippingName2) {
        this.shippingName2 = shippingName2;
    }

    
    @Column(name="SHIPPING_STREET", length=32)
    public String getShippingStreet() {
        return this.shippingStreet;
    }
    
    public void setShippingStreet(String shippingStreet) {
        this.shippingStreet = shippingStreet;
    }

    
    @Column(name="SHIPPING_ZIP", length=5)
    public String getShippingZip() {
        return this.shippingZip;
    }
    
    public void setShippingZip(String shippingZip) {
        this.shippingZip = shippingZip;
    }

    
    @Column(name="SHIPPING_CITY", length=32)
    public String getShippingCity() {
        return this.shippingCity;
    }
    
    public void setShippingCity(String shippingCity) {
        this.shippingCity = shippingCity;
    }

    
    @Column(name="SHIPPING_COUNTRY", length=32)
    public String getShippingCountry() {
        return this.shippingCountry;
    }
    
    public void setShippingCountry(String shippingCountry) {
        this.shippingCountry = shippingCountry;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="shippingAdress")
    public Set<Vmi> getVmis() {
        return this.vmis;
    }
    
    public void setVmis(Set<Vmi> vmis) {
        this.vmis = vmis;
    }




}


