using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capisa.Web.Public
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        //protected void btnLimpiar_Click(object sender, ImageClickEventArgs e)
        //{
        //    //LimpiarControles(Page);
        //}

        //public void LimpiarControles(Control c)
        //{
        //    foreach (Control c1 in c.Controls)
        //    {
        //        if (c1.GetType() == typeof(TextBox))
        //        {
        //            ((TextBox)c1).Text = "";
        //        }
        //        if (c1.HasControls())
        //        {
        //            LimpiarControles(c1);
        //        }
        //    }
        //}

        string VerificarCampos()
        {
            if (txtName.Text == "" ||
                txtCE.Text == "" ||
                txtPhone.Text == "" ||
                txtCity.Text == "" ||
                txtEstado.Text == "" ||
                txtPais.Text == "")
            {
                return "Por favor complete todos los campos que sean obligatorios.";
            }
            return "";
        }



        //protected void btnRegresar_Click(object sender, ImageClickEventArgs e)
        //{
        //    Response.Redirect("../Index.aspx");
        //}

        protected void btnImgSend_Click(object sender, ImageClickEventArgs e)
        {
            lblAvisos.Text = "";
            lblAvisos.Text = VerificarCampos();
            if(lblAvisos.Text == "")
            {
                if (EnviarCorreo())
                {
                    lblAvisos.Text = "OK";
                }
                else
                {
                    lblAvisos.Text = "Enviado";
                }
                
            }
        }

        bool EnviarCorreo()
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("mail.iydsa.com");

                mail.From = new MailAddress("Contacto@capisa.com");
                mail.To.Add("calos.valladolid@iydsa.com");
                mail.To.Add("ruben.rodriguez.93@outlook.com");
                mail.Subject = "Información de Contacto";
                mail.Body = "BLABLABLA";

                SmtpServer.Port = 25;
                //512 // 587
                SmtpServer.Credentials = new System.Net.NetworkCredential("mail@iydsa.com", "iydsa01");
                //SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
            }
            catch
            {
                return false;
            }
            return true;
        }
    }
}