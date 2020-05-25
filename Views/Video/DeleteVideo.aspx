<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>DeleteVideo</title>
</head>
<body>
    <div>
    <h1>Vista para eliminar video</h1>
    <form action="/Video/DeleteVideo" method="post">
    <fieldset>
    <legend>Datos del video</legend>
        <label for= "idVideo">IdVideo</label>
        <input type="text" name="idVideo"/>

        <input type="submit" value="Eliminar video" />
    </fieldset>
    </form>
    </div>
</body>
</html>
