/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package da;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name = "LOCATION")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "LOCATION.findAll", query = "SELECT s FROM LOCATION s")
    , @NamedQuery(name = "LOCATION.findByLOCATION_ID", query = "SELECT s FROM LOCATION s WHERE s.LOCATION_ID = :LOCATION_ID")
    , @NamedQuery(name = "LOCATION.findByCITY", query = "SELECT s FROM LOCATION s WHERE s.CITY = :CITY")
    , @NamedQuery(name = "LOCATION.findByCOUNTRY", query = "SELECT s FROM LOCATION s WHERE s.COUNTRY = :COUNTRY")
    , @NamedQuery(name = "LOCATION.findByLATITUDE", query = "SELECT s FROM LOCATION s WHERE s.LATITUDE = :LATITUDE")
    , @NamedQuery(name = "LOCATION.findByLONGTITUDE", query = "SELECT s FROM LOCATION s WHERE s.LONGTITUDE = :LONGTITUDE")
})
public class location implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "STAFF_ID")
    private String staffId;
    @Size(max = 50)
    @Column(name = "PASSWORD")
    private String password;
    @Size(max = 50)
    @Column(name = "POSITION")
    private String position;

    public Staff() {
    }

    public Staff(String staffId) {
        this.staffId = staffId;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (staffId != null ? staffId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Staff)) {
            return false;
        }
        Staff other = (Staff) object;
        if ((this.staffId == null && other.staffId != null) || (this.staffId != null && !this.staffId.equals(other.staffId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Staff[ staffId=" + staffId + " ]";
    }
    
}


