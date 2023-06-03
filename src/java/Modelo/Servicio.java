
package Modelo;


public class Servicio {
    int idservicio;
    String nomserv;
    String descripcion;
    String duracion;
    String turno;
    String imagen;
    int idtipo;
    int estadoservcio;
    double precio;
    
    public Servicio(){        
    }

    public Servicio(int idservicio, String nomserv, String descripcion, String duracion, String turno, String imagen, int idtipo, int estadoservcio, double precio) {
        this.idservicio = idservicio;
        this.nomserv = nomserv;
        this.descripcion = descripcion;
        this.duracion = duracion;
        this.turno = turno;
        this.imagen = imagen;
        this.idtipo = idtipo;
        this.estadoservcio = estadoservcio;
        this.precio = precio;
    }

    public int getIdservicio() {
        return idservicio;
    }

    public void setIdservicio(int idservicio) {
        this.idservicio = idservicio;
    }

    public String getNomserv() {
        return nomserv;
    }

    public void setNomserv(String nomserv) {
        this.nomserv = nomserv;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public int getIdtipo() {
        return idtipo;
    }

    public void setIdtipo(int idtipo) {
        this.idtipo = idtipo;
    }

    public int getEstadoservcio() {
        return estadoservcio;
    }

    public void setEstadoservcio(int estadoservcio) {
        this.estadoservcio = estadoservcio;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
}
