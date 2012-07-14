﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ClientDependency.Web.Test.Models.TestModel>" %>
<%@ Import Namespace="ClientDependency.Core.Mvc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Dynamic Path Registration
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% Html.RegisterPathAlias("NewCssPath", "~/Css/TestPath"); %>

    <% Html.RequiresCss("Content.css", "Styles"); %>
    <% Html.RequiresCss("BodyGradient.css", "NewCssPath"); %>
    <% Html.RequiresJs("HeaderOrange.js", "NewJsPath"); %>

    
    <div class="mainContent">
		<h2>
			<%= Html.Encode(this.ViewData.Model.Heading)%></h2>
		<div>
			<%= this.ViewData.Model.BodyContent %></div>
	</div>

</asp:Content>
