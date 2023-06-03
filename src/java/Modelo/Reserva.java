
package Modelo;

/**
 *
 * @author LAB-USR-CAQP-C0204
 */
public class Reserva {
    
    private String idReserva;
    private String fecha;
    private String idCliente;
    private String idServicio;
    private String idTecnico;
    
    public Reserva()
    {
        
    }

    public Reserva(String idReserva, String fecha, String idCliente, String idServicio, String idTecnico) {
        this.idReserva = idReserva;
        this.fecha = fecha;
        this.idCliente = idCliente;
        this.idServicio = idServicio;
        this.idTecnico = idTecnico;
    }

    public String getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(String idReserva) {
        this.idReserva = idReserva;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(String idCliente) {
        this.idCliente = idCliente;
    }

    public String getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(String idServicio) {
        this.idServicio = idServicio;
    }

    public String getIdTecnico() {
        return idTecnico;
    }

    public void setIdTecnico(String idTecnico) {
        this.idTecnico = idTecnico;
    }
    
    
    
    
    
    
    
}
