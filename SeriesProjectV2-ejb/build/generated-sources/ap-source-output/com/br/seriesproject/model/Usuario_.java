package com.br.seriesproject.model;

import com.br.seriesproject.model.Userinfo;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-09-29T17:35:24")
@StaticMetamodel(Usuario.class)
public class Usuario_ { 

    public static volatile SingularAttribute<Usuario, Long> idUser;
    public static volatile SingularAttribute<Usuario, String> password;
    public static volatile SingularAttribute<Usuario, String> clientId;
    public static volatile SingularAttribute<Usuario, String> clientSecret;
    public static volatile SingularAttribute<Usuario, String> grantType;
    public static volatile SingularAttribute<Usuario, Userinfo> userinfo;
    public static volatile SingularAttribute<Usuario, String> username;
    public static volatile SingularAttribute<Usuario, String> token;

}