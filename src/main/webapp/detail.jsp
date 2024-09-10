<%@ page import="cl.praxis.webappreservas.business.RoomBusiness" %>
<%@ page import="cl.praxis.webappreservas.model.Room" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

    int idRoom = Integer.parseInt(request.getParameter("idroom"));


    RoomBusiness roomb = new RoomBusiness();


    Room room = new Room();
    room.setId(idRoom);
    room = roomb.getRoomById(room);

    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String email = request.getParameter("email");
    String medioPago = request.getParameter("medioPago");
    int dias = Integer.parseInt(request.getParameter("dias"));
    String fechaEntrada = request.getParameter("fechaEntrada");
    int valorPagar = roomb.calculateValueRoom(room.getPrice(), dias);

%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>

<%@include file="assets/html/header.jsp"%>

<form method="post" action="process.jsp">

    <!-- Section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">

            <div class="row justify-content-center">
                <h1>Detalle Solicitud Habitación: <strong><%=room.getName()%></strong></h1>
                <hr/>
            </div>
        </div>

        <div class="container px-4 px-lg-5 mt-5">

            <img class="card-img-top" src="<%=room.getImage()%>" alt="<%=room.getName()%>" />

            <hr/>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Item</th>
                    <th scope="col">Valor</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Nombre</td>
                    <td><%=nombre%></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Apellido</td>
                    <td><%=apellido%></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Email</td>
                    <td><%=email%></td>
                </tr>

                <tr>
                    <th scope="row">4</th>
                    <td>Medio Pago</td>
                    <td><%=medioPago%></td>
                </tr>

                <tr>
                    <th scope="row">5</th>
                    <td>Días</td>
                    <td><%=dias%></td>
                </tr>

                <tr>
                    <th scope="row">6</th>
                    <td>Fecha Entrada</td>
                    <td><%=fechaEntrada%></td>
                </tr>

                <tr>
                    <th scope="row">7</th>
                    <td>Valor Pagar</td>
                    <td>CL$ <%=valorPagar%></td>
                </tr>

                </tbody>
            </table>

        </div>

    </section>

    <br /> <br />

</form>

<%@include file="assets/html/footer.jsp"%>

</body>
