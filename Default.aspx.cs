using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1 {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void chbMapa_CheckedChanged(object sender, EventArgs e)
        {
            if (chbMapa.Checked)
            {
                imgMapa.Visible = true;
            } else
            {
                imgMapa.Visible = false;
            }
        }

        protected void chlMapa_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (chlMapa.Items[0].Selected)
            {
                imgMapaVlasinsko.Visible = true;
            } else
            {
                imgMapaVlasinsko.Visible = false;
            }
            if (chlMapa.Items[1].Selected)
            {
                imgMapaZlatarsko.Visible = true;
            } else
            {
                imgMapaZlatarsko.Visible = false;
            }
            if (chlMapa.Items[2].Selected)
            {
                imgMapaDjerdapsko.Visible = true;
            } else
            {
                imgMapaDjerdapsko.Visible = false;
            }
        }

        protected void lstReka_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lstReka.Items[0].Selected)
            {
                lblReka.Text = "Vlasina";
            }
            if (lstReka.Items[1].Selected)
            {
                lblReka.Text = "Uvac";
            }
            if (lstReka.Items[2].Selected)
            {
                lblReka.Text = "Dunav";
            }
        }

        protected void rdlVisina_SelectedIndexChanged1(object sender, EventArgs e)
        {
            if (rdlVisina.Items[0].Selected)
            {
                lblVisina.Text = "1.213m";

            }
            if (rdlVisina.Items[1].Selected)
            {
                lblVisina.Text = "880m";
            }
            if (rdlVisina.Items[2].Selected)
            {
                lblVisina.Text = "69,5m";
            }
        }

        protected void imgGalerija_Click(object sender, ImageClickEventArgs e)
        {
            if (hplVlasinsko.Visible == false)
            {
                hplVlasinsko.Visible = true;
                hplZlatarsko.Visible = true;
                hplDjerdapsko.Visible = true;
            } else
            {
                hplVlasinsko.Visible = false;
                hplZlatarsko.Visible = false;
                hplDjerdapsko.Visible = false;
            }
        }
    }
}