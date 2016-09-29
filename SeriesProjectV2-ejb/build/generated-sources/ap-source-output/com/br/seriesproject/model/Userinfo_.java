package com.br.seriesproject.model;

import com.br.seriesproject.model.Usuario;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-09-29T19:52:02")
@StaticMetamodel(Userinfo.class)
public class Userinfo_ { 

    public static volatile SingularAttribute<Userinfo, Date> dataNasc;
    public static volatile SingularAttribute<Userinfo, String> genero;
    public static volatile SingularAttribute<Userinfo, Long> idUserinfo;
    public static volatile SingularAttribute<Userinfo, String> celular;
    public static volatile SingularAttribute<Userinfo, String> nome;
    public static volatile SingularAttribute<Userinfo, Usuario> usuario;
    public static volatile SingularAttribute<Userinfo, String> email;

}