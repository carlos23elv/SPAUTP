<%-- 
    Document   : login
    Created on : 19 may. 2023, 05:45:46
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <!-- Template Stylesheet -->
        <link rel="stylesheet" href="../src/css/stylelogin.css">
        <link href="./src/img/favicon.ico" rel="icon">
    </head>
    
    <jsp:include page="../vistas/header.jsp"></jsp:include>
    
    <body>
        <!-- Nav Bar Start -->
        <div class="nav-bar">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                    <a href="#" class="navbar-brand">MENU</a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="ml-auto">
                            <a class="btn" href="../index.jsp">Volver al inicio</a>
                        </div>
                    </div>

                </nav>
            </div>
        </div> 
        <!-- Nav Bar End --> 
        <!-- Login Start -->
                <div class="form-structor">
                    <div class="signup">
                        <h2 class="form-title" id="signup">Iniciar Sesión</h2>
                        <div class="form-holder">
                            <input type="email" class="input" placeholder="Codigo" />
                            <input type="password" class="input" placeholder="Contraseña" />
                        </div>
                        <a href="../Administracion/inicio.jsp"><button class="submit-btn">Iniciar</button></a>
                    </div>
                    <div class="login slide-up">
                        <div class="center">
                            <h2 class="form-title" id="login">Registrate</h2>
                            <div class="form-holder">
                                <input type="text" class="input" placeholder="Nombre" />
                                <input type="email" class="input" placeholder="Codigo" />
                                <input type="password" class="input" placeholder="Contraseña" />
                            </div>
                            <button class="submit-btn">Registrarse</button>
                        </div>
                    </div>
                </div>
        <!-- Login End -->        
        
        <!-- Template Javascript -->
        <script src="../src/js/scriptlog.js"></script>
        
    </body>
    
    <jsp:include page="../vistas/footer.jsp"></jsp:include>
    
</html>
