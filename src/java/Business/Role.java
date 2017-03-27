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
import javax.persistence.Table;

/**
 * Role generated by hbm2java
 */
@Entity
@Table(name="ROLE"
    ,catalog="db_21511543"
)
public class Role  implements java.io.Serializable {


     private int idRule;
     private String nameRule;
     private String descRule;
     private Set<Permission> permissions = new HashSet<Permission>(0);
     private Set<User> users = new HashSet<User>(0);

    public Role() {
    }

	
    public Role(int idRule) {
        this.idRule = idRule;
    }
    public Role(int idRule, String nameRule, String descRule, Set<Permission> permissions, Set<User> users) {
       this.idRule = idRule;
       this.nameRule = nameRule;
       this.descRule = descRule;
       this.permissions = permissions;
       this.users = users;
    }
   
     @Id 

    
    @Column(name="ID_RULE", unique=true, nullable=false)
    public int getIdRule() {
        return this.idRule;
    }
    
    public void setIdRule(int idRule) {
        this.idRule = idRule;
    }

    
    @Column(name="NAME_RULE", length=32)
    public String getNameRule() {
        return this.nameRule;
    }
    
    public void setNameRule(String nameRule) {
        this.nameRule = nameRule;
    }

    
    @Column(name="DESC_RULE")
    public String getDescRule() {
        return this.descRule;
    }
    
    public void setDescRule(String descRule) {
        this.descRule = descRule;
    }

@ManyToMany(fetch=FetchType.LAZY, mappedBy="roles")
    public Set<Permission> getPermissions() {
        return this.permissions;
    }
    
    public void setPermissions(Set<Permission> permissions) {
        this.permissions = permissions;
    }

@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(name="POSSESS", catalog="db_21511543", joinColumns = { 
        @JoinColumn(name="ID_RULE", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="ID_USER", nullable=false, updatable=false) })
    public Set<User> getUsers() {
        return this.users;
    }
    
    public void setUsers(Set<User> users) {
        this.users = users;
    }




}


