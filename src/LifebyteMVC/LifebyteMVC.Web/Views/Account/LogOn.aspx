﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LogOn
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% if (ViewData["Message"] != null) { %>
	<div style="border: solid 1px red">
		<%: ViewData["Message"].ToString()%>
	</div>
	<% } %>
	<p>You must log in before entering the Members Area: </p>
	
    <form action="Authenticate?ReturnUrl=<%=HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]) %>" method="post">
	<label for="openid_identifier">OpenID: </label>
	<input id="openid_identifier" name="openid_identifier" size="40" />
	<input type="submit" value="Login" />
	</form>

	<script type="text/javascript">
	    document.getElementById("openid_identifier").focus();
	</script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MenuPlaceHolder" runat="server">
</asp:Content>