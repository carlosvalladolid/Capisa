<%@ Page Title="" Language="C#" MasterPageFile="~/Include/Template/Public.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Capisa.Web.Index" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="BannerDiv">
        <img alt="Cabinas de pintura líquida" src="/Image/Banner/FirstBanner.jpg" />
    </div>

    <div class="MenuIconDiv">
        <img alt="Carrito" class="CartImage" src="/Image/Button/CartButton.png" />
        <img alt="" class="SeparatorImage" src="/Image/Other/SeparatorOther.jpg" />
        <img alt="Promociones" class="Promotionmage" src="/Image/Button/PromotionButton.png" />
    </div>

    <div class="YellowDiv">
        <img alt="Cabinas de pintura líquida" class="LiquidPaintImage" src="/Image/Button/LiquidPaintButton.png" />
        <img alt="Cabinas de pintura en polvo" class="PowderImage" src="/Image/Button/PowderButton.png" />
        <img alt="Hornos y sistemas de secado" class="OvenImage" src="/Image/Button/OvenButton.png" />
        <img alt="Partes" class="PartsImage" src="/Image/Button/PartsButton.png" />
    </div>

    <br /><br />
    <center>Próximamente nuestro catálogo electrónico de productos...</center>
</asp:Content>
