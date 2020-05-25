<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>DeleteReproduccionesVideo</title>
</head>
<body>
    <div>
    <h1>Vista para eliminar video por sus reproducciones</h1>
    <form action="/Video/DeleteReproduccionesVideo" method="post">
            <fieldset>
    <legend>Datos del video</legend>
        <label for= "repro">Reproducciones</label>
        <input type="text" name="repro"/>

        <input type="submit" value="Eliminar video" />
    </fieldset>
    </div>
</body>
</html>
