﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MSD
{
    public partial class eventProfile_shaul : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataBase db = new DataBase();
                string eventId = Request.QueryString["EventId"]; // userId from table after register page
                int EventId = int.Parse(eventId.ToString());
                string fullName = db.GetEventOwnerName(EventId);
                EventOwnerNameLable.Text = fullName;
                Event tmpEvent = ((Event)Application[eventId]);
                MessagesTextBox.Text = tmpEvent.Messages;
                RidesTextBox.Text = tmpEvent.Rides;

                if (checkAuthentication())
                {
                    enterLink.Visible = false;
                    exitButton.Visible = true;
                    registerLink.Text = "ברוך הבא " + Session["user"].ToString();
                    registerLink.NavigateUrl = "UserProfile?userId=" + Session["userId"].ToString();
                }
                else
                {
                    enterLink.Visible = true;
                    exitButton.Visible = false;
                    registerLink.Text = "רישום";
                    registerLink.NavigateUrl = "~/Login";
                }
            }

        }

        protected void confirmArrivalImageButton_Click(object sender, ImageClickEventArgs e)
        {
            string eventId = Request.QueryString["EventId"]; // userId from table after register page
            int EventId = int.Parse(eventId.ToString());
            Response.Redirect("ConfirmArrival?EventId=" + EventId);

        }

        protected void exitButton_Click(object sender, EventArgs e)
        {
            Session[Session["user"].ToString()] = null;
            Session["user"] = null;
            Session["userId"] = null;
            Response.Redirect(Request.RawUrl);
        }



        protected bool checkAuthentication()
        {
            if (Session["user"] != null)
                if (Session[Session["user"].ToString()] != null)
                    if (Session[Session["user"].ToString()].ToString() == "TRUE")
                        return true;
            return false;
        }
    }
}