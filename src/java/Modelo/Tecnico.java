package Modelo;

/** * @author LAB-USR-CAQP-C0204*/
public class Tecnico {
    private String idServicio;
    private String nomServicio;
    private String descripcion;
    private String costo;
    
    public Tecnico(){
        
    }

    public Tecnico(String idServicio, String nomServicio, String descripcion, String costo) {
        this.idServicio = idServicio;
        this.nomServicio = nomServicio;
        this.descripcion = descripcion;
        this.costo = costo;
    }

    public String getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(String idServicio) {
        this.idServicio = idServicio;
    }

    public String getNomServicio() {
        return nomServicio;
    }

    public void setNomServicio(String nomServicio) {
        this.nomServicio = nomServicio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
    }
    
    
    
}

