using MyLibrary; //DLL library
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClubManagementWebApp
{
    public partial class Default : Page
    {
        //hash button click using DLL
        protected void btnHash_Click(object sender, EventArgs e)
        {
            string input = txtHashInput.Text;

            if (!string.IsNullOrWhiteSpace(input))
            {
                string hashed = MyLibrary.Hash.HashString(input);
                txtHashOutput.Text = hashed;
            }
            else
            {
                txtHashOutput.Text = "Please enter text.";
            }
        }

        //redirecting nav button for member page
        protected void btnMember_Click(object sender, EventArgs e)
        {
            Response.Redirect("Member.aspx");
        }
        //redirecting nav button for staff page
        protected void btnStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("Staff.aspx");
        }
        //redirecting nav button for home page
        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        //making button to save cookie
        protected void btnSetCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserCookie");
            cookie.Value = txtCookieInput.Text;
            cookie.Expires = DateTime.Now.AddMinutes(10);
            Response.Cookies.Add(cookie);
        }
        //making button to display cookie
        protected void btnReadCookie_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserCookie"];
            if (cookie != null)
            {
                txtCookieOutput.Text = cookie.Value;
            }
            else
            {
                txtCookieOutput.Text = "Cookie not found.";
            }
        }


    }
}