<%-- 
    Document   : index
    Created on : 24/09/2020, 23:15:34
    Author     : asael
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora</title>

        <!--Bootstrap CSS-->
        <jsp:include page="/WEB-INF/extras/extrasCSS.jsp"/>

    </head>
    <body>

        <div class="d-flex justify-content-center mt-5">
            <form class="form-inline was-validated" action="resultado.jsp" method="POSt">
                <label for="numero1">Numero 1:</label>
                <input type="number" class="form-control mr-3" placeholder="Ingresa un numero" name="numero1" step="any" required>
                <label for="numero2">Numero 2</label>
                <input type="number" class="form-control mr-3" placeholder="Ingresa un numero" name="numero2" step="any" required>
                <label for="operacion">Seleccione operacion:</label>
                <select class="form-control mr-3" name="operacion">
                    <option>Sumar</option>
                    <option>Multiplicar</option>
                    <option>Mayor</option>
                    <option>Potencia</option>
                    <option>ConvertirBinario</option>
                </select>
                <button type="submit" class="btn btn-primary">Operar</button>
            </form>
        </div>

        <jsp:include page="/WEB-INF/extras/extrasJS.jsp"/>
    </body>
</html>
