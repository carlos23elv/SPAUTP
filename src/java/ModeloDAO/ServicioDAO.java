
package ModeloDAO;
import Config.Conexion;
import Intefaces.CRUD;
import Modelo.Persona;
import Modelo.Servicio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ServicioDAO implements CRUD{
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p=new Persona();
    
    @Override
    public List listar() {
        ArrayList<Servicio>list=new ArrayList<>();
        String sql="select * from servicio ";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Servicio servicio = new Servicio();
                servicio.setIdservicio(rs.getInt("Id"));
                servicio.setNomserv(rs.getString("Nom"));
                servicio.setDescripcion(rs.getString("Desc"));
                servicio.setDuracion(rs.getString("Dura"));
                servicio.setTurno(rs.getString("Turn"));
                servicio.setImagen(rs.getString("Img"));
                servicio.setIdtipo(rs.getInt("Idtip"));
                servicio.setEstadoservcio(rs.getInt("Estad"));
                servicio.setPrecio(rs.getDouble("Prec"));
                
                list.add(servicio);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql="select * from user where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                p.setId(rs.getInt("Id"));
                p.setDni(rs.getString("DNI"));
                p.setNom(rs.getString("Nombres"));
                
            }
        } catch (Exception e) {
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
       String sql="insert into user(DNI, Nombres)values('"+per.getDni()+"','"+per.getNom()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="update user set DNI='"+per.getDni()+"',Nombres='"+per.getNom()+"'where Id="+per.getId();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from user where Id="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
