using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class GameClaculator : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Show the clock on heading(Bonus feature)
            System.Threading.Thread.Sleep(60);
            lblclock.Text = DateTime.Now.ToString();
        }
    }
}