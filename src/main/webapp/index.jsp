<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@page import="cl.praxis.webappreservas.business.RoomBusiness"%>
<%@page import="cl.praxis.webappreservas.model.Room"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    RoomBusiness roomb = new RoomBusiness();
    List<Room> roomList = roomb.getRoom();
%>

<!DOCTYPE html>
<html lang="es">
<%@include file="/assets/html/head.jsp"%>
<body>
<%@include file="/assets/html/header.jsp"%>

<form method="POST" action="detail.jsp">

    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <div class="row justify-content-center">
                <h1>Habitaciones Disponibles (<%=roomList.size()%>)</h1>
                    <hr/>
            </div>


            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <%
                        for (int x = 0; x < roomList.size(); x++) {
                    %>
                    <div class="col mb-5">
                    <div class="card h-100">
                        <img class="card-img-top" src="<%=roomList.get(x).getImage()%>" alt="<%=roomList.get(x).getName()%>" />
                        <div class="card-body p-4">
                            <div class="text-center">
                                <h5 class="fw-bolder"><%=roomList.get(x).getName()%></h5>
                                <p><%=roomList.get(x).getDescription()%></p>
                                CL$
                                <%=roomList.get(x).getPrice()%>
                            </div>
                        </div>
                        <input type="radio" id="html" name="idroom" value="<%=roomList.get(x).getId()%>" checked>  
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </section>

    <section>
        <div class="container px-4 px-lg-5 mt-5">

            <h1>Información de Reserva Habitación</h1>
            <hr/>

            <div class="row g-3">
                <div class="col-md-6">
                    <label for="nombre" class="form-label">Nombre</label> <input
                        type="text" class="form-control" id="nombre" name="nombre"
                        value="Tiare Macarena">
                </div>
                <div class="col-md-6">
                    <label for="apellido" class="form-label">Apellido</label> <input
                        type="text" class="form-control" id="apellido" name="apellido"
                        value="Linco Toloza">
                </div>

                <div class="col-md-6">
                    <label for="email" class="form-label">Email</label> <input
                        type="text" class="form-control" id="email" name="email"
                        value="QueTeImporta">
                </div>

                <div class="col-md-2">
                    <label for="medioPago" class="form-label">Medio de Pago</label> <input
                        type="text" class="form-control" id="medioPago" name="medioPago"
                        value="3425">
                </div>
                <div class="col-md-2">
                    <label for="dias" class="form-label">Cantidad de Días</label> <select id="dias" name="dias" class="form-select">
                    <%
                        for (int x = 0; x < 50; x++) {
                    %>
                    <option value="<%=x + 1%>"><%=x + 1%> Día(s)
                    </option>
                    <%
                        }
                    %>

                </select>
                </div>
                <div class="col-md-2">
                    <label for="fechaEntrada" class="form-label">Fecha Entrada</label> <input
                        type="date" class="form-control" id="fechaEntrada" name="fechaEntrada"
                        value="n°">
                </div>


                <div class="col-12">
                    <hr />
                    <button type="submit" class="btn btn-primary">Enviar Solicitud de Compra</button>
                </div>
            </div>

        </div>

    </section>

    <br /> <br />
</form>
<%@include file="/assets/html/footer.jsp"%>
</body>
</html>