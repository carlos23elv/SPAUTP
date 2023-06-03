
package Modelo;

import java.util.Date;

public class Persona {
    int id;
    String dni;
    String nom;
    
    int codigo;
    String ApePat;
    String ApeMat;
    String Correo;
    String telefono;
    String Contrasena;
    int Estado;
    String Direccion;
    String Distrito;
    int rol;
    
    private Date FNacimiento;
    private String Especialidad;
    private String Horario;
    private String Turno;

    public Persona() {
    }

    public Persona(int id, String dni, String nom, int codigo, String ApePat, String ApeMat, String Correo, String telefono, String Contrasena, int Estado, String Direccion, String Distrito, int rol, Date FNacimiento, String Especialidad, String Horario, String Turno) {
        this.id = id;
        this.dni = dni;
        this.nom = nom;
        this.codigo = codigo;
        this.ApePat = ApePat;
        this.ApeMat = ApeMat;
        this.Correo = Correo;
        this.telefono = telefono;
        this.Contrasena = Contrasena;
        this.Estado = Estado;
        this.Direccion = Direccion;
        this.Distrito = Distrito;
        this.rol = rol;
        this.FNacimiento = FNacimiento;
        this.Especialidad = Especialidad;
        this.Horario = Horario;
        this.Turno = Turno;
    }   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getApePat() {
        return ApePat;
    }

    public void setApePat(String ApePat) {
        this.ApePat = ApePat;
    }

    public String getApeMat() {
        return ApeMat;
    }

    public void setApeMat(String ApeMat) {
        this.ApeMat = ApeMat;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public int getEstado() {
        return Estado;
    }

    public void setEstado(int Estado) {
        this.Estado = Estado;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getDistrito() {
        return Distrito;
    }

    public void setDistrito(String Distrito) {
        this.Distrito = Distrito;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public Date getFNacimiento() {
        return FNacimiento;
    }

    public void setFNacimiento(Date FNacimiento) {
        this.FNacimiento = FNacimiento;
    }

    public String getEspecialidad() {
        return Especialidad;
    }

    public void setEspecialidad(String Especialidad) {
        this.Especialidad = Especialidad;
    }

    public String getHorario() {
        return Horario;
    }

    public void setHorario(String Horario) {
        this.Horario = Horario;
    }

    public String getTurno() {
        return Turno;
    }

    public void setTurno(String Turno) {
        this.Turno = Turno;
    }
    
    
    
}
