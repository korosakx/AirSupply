package Business;
// Generated 28 mars 2017 12:22:06 by Hibernate Tools 4.3.1


import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * PrevDeliv generated by hbm2java
 */
@Entity
@Table(name="PREV_DELIV"
    ,catalog="db_21511543"
)
public class PrevDeliv  implements java.io.Serializable {


     private PrevDelivId id;
     private Vmi vmi;
     private Integer quantity;

    public PrevDeliv() {
    }

	
    public PrevDeliv(PrevDelivId id, Vmi vmi) {
        this.id = id;
        this.vmi = vmi;
    }
    public PrevDeliv(PrevDelivId id, Vmi vmi, Integer quantity) {
       this.id = id;
       this.vmi = vmi;
       this.quantity = quantity;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="idVmi", column=@Column(name="ID_VMI", nullable=false, length=128) ), 
        @AttributeOverride(name="vmiRf", column=@Column(name="VMI_RF", nullable=false, length=128) ), 
        @AttributeOverride(name="datePrevDeliv", column=@Column(name="DATE_PREV_DELIV", nullable=false, length=19) ) } )
    public PrevDelivId getId() {
        return this.id;
    }
    
    public void setId(PrevDelivId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumns( { 
        @JoinColumn(name="ID_VMI", referencedColumnName="ID_VMI", nullable=false, insertable=false, updatable=false), 
        @JoinColumn(name="VMI_RF", referencedColumnName="VMI_RF", nullable=false, insertable=false, updatable=false) } )
    public Vmi getVmi() {
        return this.vmi;
    }
    
    public void setVmi(Vmi vmi) {
        this.vmi = vmi;
    }

    
    @Column(name="QUANTITY")
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }




}


