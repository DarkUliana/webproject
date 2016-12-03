using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication5.Models
{
    public partial class authorization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                MyUsersContainer db = new MyUsersContainer();
                var user = db.Users.Where(a => a.login == inputLogin.Text).ToList();
                if(user!=null && user.Count>0 && user[0].password==inputPassword.Text)
                {
                    
                    Response.Redirect("profile.aspx");
                    
                }
                else
                {

                    msg.InnerText = "Неправильний логін або пароль";
                    
                }
            }
        }
    }
}