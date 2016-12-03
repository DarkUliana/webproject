using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication5;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (MyUsersContainer db = new MyUsersContainer()) { 

                User user1 = new User { name = "Різник Уляна", address = "м.Рівне", login = "admin", password = "123456" };
                db.Users.Add(user1);
                db.SaveChanges();
                
               }
        
        
        }
    }
}