<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "fsj.proyect.integrador.MySqlConexion" %>
    <%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
    <title>Cons BA AS</title>
    <link rel="icon" type="" href="/imagenes/codoacodo.png">

</head>
<body>


    <nav class="navbar navbar-expand-md navbar-dark bg-dark navegador ">
        <div class="container-fluid">
            <div class="navbar-brand contendor-logo img-fluid">
                <a href="index.html"><img width="145" height="80" src="./imagenes/codoacodo.png" alt="IconCodoACodo"></a>
                <h2>Cons Ba As</h2>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="mynavbar">
                <ul class="navbar-nav ml-auto"> 
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">La conferencia</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Los oradores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link navbar-text" href="#">El lugar y la fecha</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link navbar-text" href="#">Conviértete en orador</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" style="color: #09ce37;" href="tickets.html">Comprar ticket</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<main>
<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	String query = "INSERT INTO ticket(nombre,apellido,mail,cantidad,categoria) VALUES('"+nombre+"','"+apellido+"','"+mail+"','"+cantidad+"','"+categoria+"')";
	
	//out.println(nombre+apellido+mail+cantidad+categoria);

	MySqlConexion conexion = new MySqlConexion();
	Connection cn = conexion.conectar();
	try{
	Statement stm = cn.createStatement();
	stm.executeUpdate(query);
	
	}catch (Exception e){
		e.printStackTrace();
	}

%>



    <h1 style="text-align: center; margin-top: 60px;">¡TU COMPRA SE HA REALIZADO CON ÉXITO!</h1>

    <div style="text-align: center;">
    <img src="./imagenes/LogoTilde.png" alt="Logo de tilde" style="max-width: 20%; height: auto; margin-top: 20px;">
</div>

</main>
<footer class="contenedorfooter" >
        <li><a href="#">Preguntas frecuentes</a></li>
        <li><a href="#">Contáctanos</a></li>
        <li><a href="#">Prensa</a></li>
        <li><a href="#">Conferencias</a></li>
        <li><a href="#">Términos y condiciones</a></li>
        <li><a href="#">Privacidad</a></li>
        <li><a href="#">Estudiantes</a></li>

    </footer>
<script src="js/scripts.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

</body>
</html>