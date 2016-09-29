/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.br.seriesproject.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Rosangela
 */
@Entity
@Table(name = "USERINFO")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Userinfo.findAll", query = "SELECT u FROM Userinfo u"),
    @NamedQuery(name = "Userinfo.findByIdUserinfo", query = "SELECT u FROM Userinfo u WHERE u.idUserinfo = :idUserinfo"),
    @NamedQuery(name = "Userinfo.findByNome", query = "SELECT u FROM Userinfo u WHERE u.nome = :nome"),
    @NamedQuery(name = "Userinfo.findByDataNasc", query = "SELECT u FROM Userinfo u WHERE u.dataNasc = :dataNasc"),
    @NamedQuery(name = "Userinfo.findByGenero", query = "SELECT u FROM Userinfo u WHERE u.genero = :genero"),
    @NamedQuery(name = "Userinfo.findByEmail", query = "SELECT u FROM Userinfo u WHERE u.email = :email"),
    @NamedQuery(name = "Userinfo.findByCelular", query = "SELECT u FROM Userinfo u WHERE u.celular = :celular")})
public class Userinfo implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "ID_USERINFO")
    private Long idUserinfo;
    @Basic(optional = false)
    @Size(min = 1, max = 40)
    @Column(name = "NOME")
    private String nome;
    @Basic(optional = false)
    @Column(name = "DATA_NASC")
    @Temporal(TemporalType.DATE)
    private Date dataNasc;
    @Basic(optional = false)
    @Size(min = 1, max = 2)
    @Column(name = "GENERO")
    private String genero;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="E-mail inválido")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @Size(min = 1, max = 40)
    @Column(name = "EMAIL")
    private String email;
    @Basic(optional = false)
    @Size(min = 1, max = 11)
    @Column(name = "CELULAR")
    private String celular;
    @JoinColumn(name = "ID_USERINFO", referencedColumnName = "ID_USER", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Usuario usuario;

    public Userinfo() {
    }

    public Userinfo(Long idUserinfo) {
        this.idUserinfo = idUserinfo;
    }

    public Userinfo(Long idUserinfo, String nome, Date dataNasc, String genero, String email, String celular) {
        this.idUserinfo = idUserinfo;
        this.nome = nome;
        this.dataNasc = dataNasc;
        this.genero = genero;
        this.email = email;
        this.celular = celular;
    }

    public Long getIdUserinfo() {
        return idUserinfo;
    }

    public void setIdUserinfo(Long idUserinfo) {
        this.idUserinfo = idUserinfo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataNasc() {
        return dataNasc;
    }

    public void setDataNasc(Date dataNasc) {
        this.dataNasc = dataNasc;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idUserinfo != null ? idUserinfo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Userinfo)) {
            return false;
        }
        Userinfo other = (Userinfo) object;
        if ((this.idUserinfo == null && other.idUserinfo != null) || (this.idUserinfo != null && !this.idUserinfo.equals(other.idUserinfo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.br.seriesproject.model.Userinfo[ idUserinfo=" + idUserinfo + " ]";
    }
    
}
