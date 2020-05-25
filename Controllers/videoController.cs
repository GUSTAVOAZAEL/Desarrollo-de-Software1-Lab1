using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data;
using System.Data.SqlClient;
using MVCPlantilla.Utilerias;

namespace MvcPlantilla.Controllers
{
    public class VideoController : Controller
    {
        // LAB LISTO PARA SUBIR (CLONADO)
        // GET: /Video/

        public ActionResult Index()
        {
            return View();
        }
//******************************************************************************
        public ActionResult VerVideo()
        {
            //Consultar videos de la BD
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                "SELECT * FROM video", CommandType.Text);
            return View();
        }
//******************************************************************************
        public ActionResult DeleteVideo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DeleteVideo(int idVideo)
        {//Guardar los datos en la Base
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));

            BaseHelper.ejecutarSentencia("DELETE FROM video " +
                                     "WHERE idVideo = @idVideo",
                                     CommandType.Text,
                                     parametros);

            return RedirectToAction("Index", "Home");
        }
//******************************************************************************
        public ActionResult AddVideo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(int idVideo,
                                   string titulo,
                                   int repro,
                                   string url)
        {

            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("INSERT INTO video " +
                                     "VALUES(@idVideo,@titulo," +
                                     "@repro,@url)",
                                     CommandType.Text,
                                     parametros);


            return RedirectToAction("Index", "Home");
        }
//******************************************************************************
        public ActionResult UpdateVideo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult UpdateVideo(int idVideo,
                                   string titulo,
                                   int repro,
                                   string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@repro", repro));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("UPDATE video SET  idVideo = @idVideo, titulo = @titulo, repro= @repro, url = @url WHERE idVideo = @idVideo", CommandType.Text, parametros);


            return RedirectToAction("Index", "Home");
        }
 //******************************************************************************
        public ActionResult DeleteReproduccionesVideo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DeleteReproduccionesVideo(int repro)
        {//Guardar los datos en la Base
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@repro", repro));

            BaseHelper.ejecutarSentencia("DELETE FROM video " +
                                     "WHERE repro = @repro",
                                     CommandType.Text,
                                     parametros);

            return RedirectToAction("Index", "Home");
        }
    }
}
