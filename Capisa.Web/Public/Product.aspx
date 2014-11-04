<%@ Page Title="" Language="C#" MasterPageFile="~/Include/Template/Public.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Capisa.Web.Public.Product" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="LeftDiv">
        <div class="CategoryTitleDiv">CATEGORÍAS DE PRODUCTOS</div>
        <div class="CategoryNameDiv">Cabinas de pintura líquida</div>
    </div>

    <div class="RightDiv">
        <div class="BannerDiv"><img alt="Productos de pintura" src="/Image/Banner/ProductBanner.jpg" /></div>

        <div class="ProductTitleDiv">
            <div class="IconDiv"><img alt="Pintura" src="/Image/Icon/LiquidPaintIcon.png" /></div>
            <div class="TitleDiv">Cabina Automotriz / Modelo-1 Económico Cal. 22</div>
        </div>
    </div>
</asp:Content>
