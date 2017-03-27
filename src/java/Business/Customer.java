package Business;
// Generated 27 mars 2017 14:41:47 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Customer generated by hbm2java
 */
@Entity
@Table(name="CUSTOMER"
    ,catalog="db_21511543"
)
public class Customer  implements java.io.Serializable {


     private long idCustomer;
     private String nameCustomer;
     private String streetCustomer;
     private String zipCustomer;
     private String cityCustomer;
     private String countryCustomer;
     private Set<Po> pos = new HashSet<Po>(0);
     private Set<User> users = new HashSet<User>(0);
     private Set<Product> products = new HashSet<Product>(0);
     private Set<Vmi> vmis = new HashSet<Vmi>(0);

    public Customer() {
    }

	
    public Customer(long idCustomer) {
        this.idCustomer = idCustomer;
    }
    public Customer(long idCustomer, String nameCustomer, String streetCustomer, String zipCustomer, String cityCustomer, String countryCustomer, Set<Po> pos, Set<User> users, Set<Product> products, Set<Vmi> vmis) {
       this.idCustomer = idCustomer;
       this.nameCustomer = nameCustomer;
       this.streetCustomer = streetCustomer;
       this.zipCustomer = zipCustomer;
       this.cityCustomer = cityCustomer;
       this.countryCustomer = countryCustomer;
       this.pos = pos;
       this.users = users;
       this.products = products;
       this.vmis = vmis;
    }
   
     @Id 

    
    @Column(name="ID_CUSTOMER", unique=true, nullable=false)
    public long getIdCustomer() {
        return this.idCustomer;
    }
    
    public void setIdCustomer(long idCustomer) {
        this.idCustomer = idCustomer;
    }

    
    @Column(name="NAME_CUSTOMER", length=32)
    public String getNameCustomer() {
        return this.nameCustomer;
    }
    
    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    
    @Column(name="STREET_CUSTOMER", length=32)
    public String getStreetCustomer() {
        return this.streetCustomer;
    }
    
    public void setStreetCustomer(String streetCustomer) {
        this.streetCustomer = streetCustomer;
    }

    
    @Column(name="ZIP_CUSTOMER", length=5)
    public String getZipCustomer() {
        return this.zipCustomer;
    }
    
    public void setZipCustomer(String zipCustomer) {
        this.zipCustomer = zipCustomer;
    }

    
    @Column(name="CITY_CUSTOMER", length=32)
    public String getCityCustomer() {
        return this.cityCustomer;
    }
    
    public void setCityCustomer(String cityCustomer) {
        this.cityCustomer = cityCustomer;
    }

    
    @Column(name="COUNTRY_CUSTOMER", length=32)
    public String getCountryCustomer() {
        return this.countryCustomer;
    }
    
    public void setCountryCustomer(String countryCustomer) {
        this.countryCustomer = countryCustomer;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="customer")
    public Set<Po> getPos() {
        return this.pos;
    }
    
    public void setPos(Set<Po> pos) {
        this.pos = pos;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="customer")
    public Set<User> getUsers() {
        return this.users;
    }
    
    public void setUsers(Set<User> users) {
        this.users = users;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="customer")
    public Set<Product> getProducts() {
        return this.products;
    }
    
    public void setProducts(Set<Product> products) {
        this.products = products;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="customer")
    public Set<Vmi> getVmis() {
        return this.vmis;
    }
    
    public void setVmis(Set<Vmi> vmis) {
        this.vmis = vmis;
    }




}


