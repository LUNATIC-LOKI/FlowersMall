<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Front_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>首页</title>

    <style type="text/css">
        @import url("../Style/MasterPage.css");
        @import url("../Style/Index.css");
        /*加载iconFont资源*/
        @import url("../Style/iconFont/iconfont.css");
    </style>
    <script type="text/javascript" src="../JS/jquery.min.js"></script>
    <script type="text/javascript" src="../JS/MasterPage.js"></script>
    

</asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    该标签被注释掉后母版定义在搜索框下的文字将显示出来
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    该标签注被释掉后母版定义的导航栏将会显示出来
</asp:Content>--%>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <!--动态轮播图区-->
    <div class="slideshow">
        <div class="center-left-img">
            <!--图片盒子-->
            <div class="imgBox">
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink1" runat="server">
                        <div class="fill" style="background-image:url('../Images/1.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink2" runat="server">
                        <div class="fill" style="background-image:url('../Images/2.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink3" runat="server">
                        <div class="fill" style="background-image:url('../Images/3.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink4" runat="server">
                        <div class="fill" style="background-image:url('../Images/4.jpg')"></div>
                    </asp:HyperLink>
                </div>
                <div class="img-slide " >
                    <asp:HyperLink ID="HyperLink5" runat="server">
                        <div class="fill" style="background-image:url('../Images/5.jpg')"></div>
                    </asp:HyperLink>
                </div>
            </div>
            <!--浮动圆点-->
            <div class="dot">
                <div><i class="iconfont-dot dot1" onclick="DotClick(0)" onmouseover="DotHover(0)">&#xe796;</i></div>
                <div><i class="iconfont-dot dot2" onclick="DotClick(1)" onmouseover="DotHover(1)">&#xe796;</i></div>
                <div><i class="iconfont-dot dot3" onclick="DotClick(2)" onmouseover="DotHover(2)">&#xe796;</i></div>
                <div><i class="iconfont-dot dot4" onclick="DotClick(3)" onmouseover="DotHover(3)">&#xe796;</i></div>
                <div><i class="iconfont-dot dot5" onclick="DotClick(4)" onmouseover="DotHover(4)">&#xe796;</i></div>
            </div>
            <!--切换箭头-->
            <div class="switcher-div">
                <span class="switcher s-left">
                    <i class="iconfont-switcher" onclick="SwitcherClick(0)">&#xe6a5;</i>
                </span>
                <span class="switcher s-right">
                    <i class="iconfont-switcher" onclick="SwitcherClick(1)">&#xe6a5;</i>
                </span>
            </div>
            
        </div>
        <script type="text/javascript" src="../JS/index-img-slide.js"></script>
    </div>
    
    


</asp:Content>

