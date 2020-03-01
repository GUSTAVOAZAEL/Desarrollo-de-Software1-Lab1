<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>
    <div>
    <h1>Bienvenido a la Pagina</h1>
    <hr />
    <a href="http://localhost:4746/Video/DeleteVideo">Eliminar Video</a>
    <h1></h1>
    <a href="http://localhost:4746/Video/AddVideo">Agregar Video</a>
    <h1></h1>
    <a href="http://localhost:4746/Video/UpdateVideo">Actualizar Video</a>
    <h1></h1>
    <a href="http://localhost:4746/Video/DeleteReproduccionesVideo">Eliminar Video por reproducciones</a>
    </div>
</body>
</html>
