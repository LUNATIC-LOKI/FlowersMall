using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using App_Code;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //System.Drawing.Color.Black 在asp里面设置颜色
        HyperLink1.ForeColor = System.Drawing.Color.Black;

        
        if (this.TextBox1.Text == "")
        {
            this.TextBox1.Focus();
        }

        cencle1.Enabled = true;
        cencle2.Enabled = true;

        cencle1.Validate();
        cencle2.Validate();

        /// TextBox1.Attributes.Add 获取按下的按键  是回车 将 焦点给
        this.TextBox1.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('TextBox2').focus();  return   false}");
        this.TextBox2.Attributes.Add("onkeydown", "if(event.keyCode==13){document.getElementById('ImageButton1').focus();  return   false}");

        //设置了user id 和userpwd 的变量
        if (Session["USERID"] != null && Session["USERPWD"] != null)
        {
            string id = Session["USERID"].ToString();
            string pwd = Session["USERPWD"].ToString();    
            TextBox1.Text = id;
            TextBox2.Text = pwd;
        }
    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DB db = new DB();
        //是否连接到数据库

        //判断是否是数字
        //如果不是 使用 用户查询
        decimal result;
        decimal.TryParse(TextBox1.Text,out result);
        if (result==0)
        { //是否连接到数据库
            if (!db.Fault) 
            {
                if (db.Query("SELECT * FROM  User_Table  WHERE u_name='" + TextBox1.Text + "'"))
                {
                    ArrayList arr = db.DataReader("SELECT * FROM User_Table WHERE u_name='" + TextBox1.Text + "'", "u_password");
                    if (arr[0].ToString() == TextBox2.Text)
                    //对比密码是否正确  如果没错将文本信息赋值将SESSION里面
                    {
                        Session["USERID"] = TextBox1.Text;
                        Session["USERPWD"] = TextBox2.Text;
                        // 执行完 关闭连接和 释放资源
                        db.OffData();
                        //跳转到主页
                        Response.Redirect("../Front/First.aspx? ");
                    }
                    else
                    {
                        db.OffData();
                        Response.Write("<script> alert('密码错误！')</script>");
                    }

                }
                else
                {
                    db.OffData();
                    Response.Write("<script> alert('用户名错误！')</script>");
                }

            }
        }
        else
        {
            if (!db.Fault)
            {
                if (db.Query("SELECT * FROM User_Table WHERE u_iphone='" + TextBox1.Text + "'"))
                {
                    ArrayList arr = db.DataReader("SELECT * FROM User_Table WHERE u_iphone='" + TextBox1.Text + "'", "u_password");
                    ArrayList arr1 = db.DataReader("SELECT * FROM User_Table WHERE u_iphone='" + TextBox1.Text + "'", "u_name");
                    if (arr[0].ToString() == TextBox2.Text)
                    //对比密码是否正确  如果没错将文本信息赋值将SESSION里面
                    {
                        Session["USERID"] = arr1[0].ToString();
                    
                        Session["USERPWD"] = TextBox2.Text;
                        // 执行完 关闭连接和 释放资源
                        db.OffData();
                        //跳转到主页
                        Response.Redirect("/First.aspx? ");
                    }
                    else
                    {
                        db.OffData();
                        Response.Write("<script> alert('密码错误！')</script>");
                    }

                }
                else
                {
                    db.OffData();
                    Response.Write("<script> alert('用户名错误！')</script>");
                }

            }


        }


        
        

    }
  

     /// <summary>
     /// 判断数字
     /// </summary>
     /// <param name="s"></param>
     /// <returns></returns>
    // bool Isnum (string s ){
    //    try
    //    {
    //        int tmp = int.Parse(s);
    //        return true;
    //    }
    //    catch (Exception)
    //    {
    //        return false;
    //    }

    //}

}