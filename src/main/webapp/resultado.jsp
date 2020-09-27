<%-- 
    Document   : resultado
    Created on : 24/09/2020, 23:35:17
    Author     : asael
--%>

<%@page import="backend.Operaciones"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>

        <!--Bootstrap CSS-->
        <jsp:include page="/WEB-INF/extras/extrasCSS.jsp"/>
    </head>
    <body>
        <div class="container mt-4">
            <div class="row">
                <%
                    Operaciones operaciones = new Operaciones();
                    String operacion = request.getParameter("operacion");
                    Double num1 = Double.parseDouble(request.getParameter("numero1"));
                    Double num2 = Double.parseDouble(request.getParameter("numero2"));

                    int numero1=0;
                    int numero2=0;
                    if (operacion.equals("ConvertirBinario")) {
                        numero1 = Integer.parseInt(request.getParameter("numero1"));
                        numero2 = Integer.parseInt(request.getParameter("numero2"));
                    }

                    switch (operacion) {
                        case "Sumar":
                %>
                La suma de los dos numeros es: <%= operaciones.sumar(num1, num2)%>
                <%
                        break;
                    case "Multiplicar":
                %>
                La multiplicacion de los dos numeros es: <%= operaciones.multiplicar(num1, num2)%>
                <%
                        break;
                    case "Mayor":
                %>
                El numero mayor es: <%= operaciones.mayor(num1, num2)%>
                <%
                        break;
                    case "Potencia":
                %>
                La potencia del numero 1 elevado al numero 2 es: <%= operaciones.potencia(num1, num2)%>
                <%
                        break;
                    case "ConvertirBinario":
                %>
                <%= operaciones.binarios(numero1,numero2)%>
                <%
                            break;
                    }
                %>
            </div>
            <div class="row mt-3">
                <a href="index.jsp" class="btn btn-warning">Regresar al inicio</a>
            </div>
        </div>

        <jsp:include page="/WEB-INF/extras/extrasJS.jsp"/>
    </body>
</html>
