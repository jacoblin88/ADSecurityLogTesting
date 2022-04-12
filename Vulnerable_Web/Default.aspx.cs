using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.IO;

namespace Vulnerable_Web
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StartUpLoad();
        }

        private void StartUpLoad()
        {
            //get the file name of the posted image  
            string imgName = FileUpload1.FileName;

            //string user_name = HttpContext.Current.User.Identity.Name;
            string user_name = "ab\\cd";
            string[] sArray = user_name.Split('\\');
            string apPath = System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath;
            Response.Write(apPath);
            //CreateD
            String UserPath = apPath +  "Upload/" + sArray[1]; 　
            System.IO.Directory.CreateDirectory(UserPath);

            //sets the image path
            string imgPath = "Upload/" + sArray[1] + "/" +imgName;
            //get the size in bytes that  

            int imgSize = FileUpload1.PostedFile.ContentLength;

            //validates the posted file before saving  
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                // 10240 KB means 10MB, You can change the value based on your requirement  
                if (FileUpload1.PostedFile.ContentLength > 10240)
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                }
                else
                {
                    //then save it to the Folder  
                    FileUpload1.SaveAs(Server.MapPath(imgPath));
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                }

            }
        }
    }
}