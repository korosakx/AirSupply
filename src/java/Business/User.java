package Business;
// Generated 27 mars 2017 14:41:47 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name="USER"
    ,catalog="db_21511543"
)
public class User  implements java.io.Serializable {


     private int idUser;
     private Customer customer;
     private Supplier supplier;
     private String name;
     private String surname;
     private String phone;
     private String mail;
     private String login;
     private String password;
     private Set<PoLine> poLines = new HashSet<PoLine>(0);
     private Set<Role> roles = new HashSet<Role>(0);
     private Set<Module> modules = new HashSet<Module>(0);

    public User() {
    }

	
    public User(int idUser) {
        this.idUser = idUser;
    }
    public User(int idUser, Customer customer, Supplier supplier, String name, String surname, String phone, String mail, String login, String password, Set<PoLine> poLines, Set<Role> roles, Set<Module> modules) {
       this.idUser = idUser;
       this.customer = customer;
       this.supplier = supplier;
       this.name = name;
       this.surname = surname;
       this.phone = phone;
       this.mail = mail;
       this.login = login;
       this.password = password;
       this.poLines = poLines;
       this.roles = roles;
       this.modules = modules;
    }
   
     @Id 

    
    @Column(name="ID_USER", unique=true, nullable=false)
    public int getIdUser() {
        return this.idUser;
    }
    
    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="ID_CUSTOMER")
    public Customer getCustomer() {
        return this.customer;
    }
    
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="ID_SUPPLIER")
    public Supplier getSupplier() {
        return this.supplier;
    }
    
    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    
    @Column(name="NAME", length=32)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="SURNAME", length=32)
    public String getSurname() {
        return this.surname;
    }
    
    public void setSurname(String surname) {
        this.surname = surname;
    }

    
    @Column(name="PHONE", length=32)
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }

    
    @Column(name="MAIL", length=32)
    public String getMail() {
        return this.mail;
    }
    
    public void setMail(String mail) {
        this.mail = mail;
    }

    
    @Column(name="LOGIN", length=32)
    public String getLogin() {
        return this.login;
    }
    
    public void setLogin(String login) {
        this.login = login;
    }

    
    @Column(name="PASSWORD", length=32)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set<PoLine> getPoLines() {
        return this.poLines;
    }
    
    public void setPoLines(Set<PoLine> poLines) {
        this.poLines = poLines;
    }

@ManyToMany(fetch=FetchType.LAZY, mappedBy="users")
    public Set<Role> getRoles() {
        return this.roles;
    }
    
    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="PREFERENCE", catalog="db_21511543", joinColumns = { 
        @JoinColumn(name="ID_USER", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="ID_MODULE", nullable=false, updatable=false) })
    public Set<Module> getModules() {
        return this.modules;
    }
    
    public void setModules(Set<Module> modules) {
        this.modules = modules;
    }




}


