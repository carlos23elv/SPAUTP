
package Modelo;

/**
 *
 * @author LAB-USR-CAQP-C0204
 */
public class Administrador {
    private String idAdministrador;
    private String horario;
    private String turno;
    
    public Administrador()
    {}

    public Administrador(String idAdministrador, String horario, String turno) {
        this.idAdministrador = idAdministrador;
        this.horario = horario;
        this.turno = turno;
    }

    public String getIdAdministrador() {
        return idAdministrador;
    }

    public void setIdAdministrador(String idAdministrador) {
        this.idAdministrador = idAdministrador;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }
    
    
    
}
