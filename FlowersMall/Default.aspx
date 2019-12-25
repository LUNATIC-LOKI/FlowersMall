<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--这是head头部分，可以做引入css和js等操作--%>
    <title>测试</title>
</asp:Content>

<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    该标签被注释掉后母版定义在搜索框下的文字将显示出来
</asp:Content>--%>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <%--该标签注被释掉后母版定义的导航栏将会显示出来--%>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <br />
    <br />
    <br />
    <br />
    一般主要内容都是在这个标签下编辑的
    <br />
    这是内容编辑区
    <br />
    测试
    <br />
    <br />
    <br />
    <br />


</asp:Content>

