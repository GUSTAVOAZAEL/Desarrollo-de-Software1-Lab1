﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>VerVideo</title>
</head>
<body>
     <hi>Vista para ver los videos</hi>
     <%
        foreach (System.Data.DataRow video in ((System.Data.DataTable)ViewData["video"]).Rows)
        {  %> 

                        <p>  <%: video["titulo"].ToString()%>
                            <br />
                 idVideo= [<%:video ["idVideo"].ToString()%>] </p>

                        <iframe width="560" height="315" src="<%: video["url"].ToString() %>"
                         frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

        <%
        }

         %>
</body>
</html>
