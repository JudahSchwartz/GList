using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SendEmail(FNameTB.Text,LNameTB.Text,EmailTB.Text,MessageTA.Value);
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
            "alertMessage", "alert('Message Sent. Thank you for contacting us.');" +
            "window.location='Default.aspx'", true);
       
        
    }
    public void SendEmail(string fName, string lName,string email, string message)
    {
        MailMessage mailMessage = new MailMessage("JudahSchspam@gmail.com", $"judahsch@gmail.com");
        mailMessage.Subject = "Contact Page Submission";
        mailMessage.Body = $"Name: {fName}\n Email Address: {email}\n Message:\n{message}";
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        smtpClient.Credentials = new System.Net.NetworkCredential() {
            UserName = "judahschspam@gmail.com",
            Password = "hoopdyloopdy"
        };
        smtpClient.EnableSsl = true;
        smtpClient.Send(mailMessage);
        //   OutputLabel.Text = "emailSent";
    }




    protected void FNameTB_TextChanged(object sender, EventArgs e)
    {

    }
}