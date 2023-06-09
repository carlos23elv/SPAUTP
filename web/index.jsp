<%-- 
    Document   : index
    Created on : 24 may. 2023, 10:42:01
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Servicio"%>
<%@page import="ModeloDAO.ServicioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>SPA UTP</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <!-- Favicon -->
        <link href="src/img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="src/lib/flaticon/font/flaticon.css" rel="stylesheet"> 
        <link href="src/lib/animate/animate.min.css" rel="stylesheet">
        <link href="src/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="src/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="src/lib/slick/slick.css" rel="stylesheet">
        <link href="src/lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="src/css/style.css" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper">
            <!-- Top Bar Start -->
            <div class="top-bar">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-lg-4 col-md-12">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="src/img/SPAUTP.png" alt="Logo">
                                </a>
                            </div>
                        </div>

                        <div class="col-lg-8 col-md-7 d-none d-lg-block">
                            <div class="row">
                                <div class="col-4">
                                    <div class="top-bar-item">
                                        <h3><i class="fa fa-phone-alt"></i></h3>
                                        <div class="top-bar-text">
                                            <h3>Contactenos:</h3>
                                            <p>+51 123456789</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="top-bar-item">
                                        <h3><i class="fa fa-envelope"></i></h3>
                                        <div class="top-bar-text">
                                            <h3>Escríbenos a:</h3>
                                            <p>spautp@gmail.com</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="top-bar-item">
                                        <!--<a href="ControlCliente?metodo=lista">Iniciar sesion ►</a>-->
                                        <a href="vistas/login.jsp">Iniciar sesion ►</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->
            <!-- Page Header Start -->
            <div class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <h2>¡BIENVENIDO!</h2>
                        </div>
                    </div>
                </div>
            </div>
        <!-- Page Header End -->

        <!-- Carrousel Nav Bar Start -->

            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="src/img/masaje4.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">Confía en nuestras manos, déjate consentir</h1>
                            <p class="animated fadeInRight">Reserva tu cita</p>
                            <ul style="list-style-type:none;">
                                <li class="nav-item nav-link active" style="float:left;"><a class="btn animated fadeInUp" href="Vistas/atencion.jsp" class="nav-item nav-link">Consulte aqui</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="src/img/choc0.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">Inhala la tranquilidad, exhala los problemas.</h1>
                            <p class="animated fadeInRight">Reserva tu cita</p>
                            <ul style="list-style-type:none;">
                                <li class="nav-item nav-link active" style="float:left;"><a class="btn animated fadeInUp" href="Vistas/atencion.jsp" class="nav-item nav-link">Consulte aqui</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="src/img/masaje1.jpg"alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 class="animated fadeInLeft">Saca a relucir tu belleza interna</h1>
                            <p class="animated fadeInRight">Reserva tu cita</p>
                            <ul style="list-style-type:none;">
                                <li class="nav-item nav-link active" style="float:left;"><a class="btn animated fadeInUp" href="Vistas/atencion.jsp" class="nav-item nav-link">Consulte aqui</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>            
        <!-- Carrousel Nav Bar End -->

        <!-- Team Start (Service)-->
            <div class="team">
                <div class="container">
                    <%
                        ServicioDAO dao = new ServicioDAO();
                        List<Servicio>list=dao.listar();
                        Iterator<Servicio>iter=list.iterator();
                        Servicio serv=null;
                        while(iter.hasNext()){
                            serv=iter.next();

                    %>
                    <div class="row">
                        <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="src/img/<%= serv.getImagen()%>" alt="Team Image" width="150" height="250">
                                </div>
                                <div class="team-text">
                                    <h2><%= serv.getNomserv()%></h2>
                                    <p>Tiempo : <%= serv.getDuracion()%> horas</p>
                                    <p>Precio: S/ <%= serv.getPrecio()%></p>
                                </div> 
                                <div class="team-social">
                                    <a class="social-in" href="#"><i class="fa fa-phone-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%  } %>
                </div>
            </div>            
        <!-- Team End --> 
        
        <br>
        <br>
        <div class="container">
            <a class="btn btn-success btn-lg" href="Controlador?accion=listar">Listar Persona</a>
        </div>
            
        <!-- Nav Bar Start -->            
            <div class="nav-bar">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                        <a href="#" class="navbar-brand">MENU</a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <ul style="list-style-type:none;">
                                <li class="nav-item nav-link active" style="float:left;"><h2>Tus servicios seleccionados ►</h2></li>
                                <li class="nav-item nav-link active" style="float:left;"><a class="btn animated fadeInUp" href="vistas/cita.jsp" class="nav-item nav-link">Lista de Servicios</a></li>
                                <li class="nav-item nav-link active" style="float:left;"><a class="btn animated fadeInUp" href="vistas/servicios.jsp" class="nav-item nav-link">Servicios</a></li>
                                <li class="nav-item nav-link active" style="float:left;"><a class="btn animated fadeInUp" href="vistas/descripcion.jsp" class="nav-item nav-link">Información</a></li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div> 
        <!-- Nav Bar End -->
        
        <!-- Carousel Start -->
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                    <li data-target="#carousel" data-slide-to="3"></li>
                    <li data-target="#carousel" data-slide-to="4"></li>
                    <li data-target="#carousel" data-slide-to="5"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item">
                        <img src="src/img/masaje1.jpg" alt="Carousel Image">  
                    </div>
                    <div class="carousel-item">
                        <img src="src/img/masaje2.png" alt="Carousel Image">  
                    </div>
                    <div class="carousel-item">
                        <img src="src/img/masaje3.jpg" alt="Carousel Image">  
                    </div>
                    <div class="carousel-item">
                        <img src="src/img/masaje4.jpg" alt="Carousel Image">  
                    </div>
                    <div class="carousel-item">
                        <img src="src/img/choc.jpg" alt="Carousel Image">  
                    </div>
                    <div class="carousel-item active">
                        <img src="src/img/fango.jpg" alt="Carousel Image">
                    </div>
                </div>
            </div>        
        <!-- Carousel End -->
            
        <!-- Footer Start -->
            <div class="footer wow fadeIn" data-wow-delay="0.3s">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-3">
                            <div class="footer-contact">
                                <h2>Información Básica</h2>
                                <p><i class="fa fa-map-marker-alt"></i>Av. Ejecito N° 1200 Cayma</p>
                                <p><i class="fa fa-phone-alt"></i>+51 123456789</p>
                                <p><i class="fa fa-envelope"></i>spautp@gmail.com</p>
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-youtube"></i></a>
                                    <a href="#"><i class="fab fa-instagram"></i></a>
                                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="footer-link">
                                <h2>Información Adicional</h2>
                                <a href="vistas/info.jsp">Sobre Nosotros</a>
                                <a href="vistas/descripcion.jsp">Empleados</a>
                                <a href="vistas/servicios.jsp">Servicios</a>
                                <a href="vistas/atencion.jsp">Atención</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="footer-link">
                                <h2>Privacidad</h2>
                                <a href="#">Políticas de privacidad</a>
                                <a href="#">Portal de transparencia</a>
                                <a href="#">Términos y condiciones</a>
                                <a href="#">Libro de Reclamaciones</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="newsletter">
                                <h2>Para Registrarse</h2>
                                <p>
                                    Te invitamos a conocer más acerca de nosotros, Regístrate.
                                </p>
                                <div class="form">
                                    <a href="vistas/login.jsp"><button class="btn">Regístrate</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container footer-menu">
                    <div class="f-menu">
                        <a href="vistas/servicios.jsp">Servicios</a>
                        <a href="vistas/descripcion.jsp">Encargados</a>
                        <a href="vistas/descripcion.jsp">Tecnicos</a>
                        <a href="vistas/atencion.jsp">Contactos</a>
                    </div>
                </div>
                <div class="container copyright">
                    <div class="row">
                        <div class="col-md-6">
                            <p>&copy; <a href="#">SPA UTP</a>, Centro de tratamientos de belleza</p>
                        </div>
                    </div>
                </div>
            </div>
        <!-- Footer End -->
        
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="src/lib/easing/easing.min.js"></script>
        <script src="src/lib/wow/wow.min.js"></script>
        <script src="src/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="src/lib/isotope/isotope.pkgd.min.js"></script>
        <script src="src/lib/lightbox/js/lightbox.min.js"></script>
        <script src="src/lib/waypoints/waypoints.min.js"></script>
        <script src="src/lib/counterup/counterup.min.js"></script>
        <script src="src/lib/slick/slick.min.js"></script>

        <!-- Template Javascript -->
        <script src="src/js/main.js"></script>
        
    </body>
</html>
