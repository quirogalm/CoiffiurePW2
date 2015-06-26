package unsa.com;


import java.util.Date;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

//import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Cita {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private Long key;

	 @Persistent
	private String nombre;	
	 
     @Persistent
	private String apellidos;	

     @Persistent
 	private String sex;	

     @Persistent
  	private String correo;	
     
     @Persistent
   	private String corte; 
   
     @Persistent
   	private String desc;

	public Cita(String nombre, String apellidos, String sex, String correo,
			String corte, String desc) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.sex = sex;
		this.correo = correo;
		this.corte = corte;
		this.desc = desc;
	}

	public Cita(String nombre, String apellidos, String sex, String correo) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.sex = sex;
		this.correo = correo;
		this.corte = corte;
		this.desc = desc;
	}
	public Long getKey() {
		return key;
	}

	public void setKey(Long key) {
		this.key = key;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellidos;
	}

	public void setApellido(String apellido) {
		this.apellidos = apellido;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getCorte() {
		return corte;
	}

	public void setCorte(String corte) {
		this.corte = corte;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
 



}
