<%@ Page Title="" Language="C#" MasterPageFile="~/Include/Template/Public.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Capisa.Web.Public.Gallery" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    <script src="/Include/Javascript/jquery-1.9.1.min.js" type="text/javascript"></script>    <link href="/Include/Style/Public/GalleryPhoto.css" rel="Stylesheet" type="text/css" />
    <link href="/Include/Style/Public/jquery.ad-gallery.css" rel="Stylesheet" type="text/css" />    <script type="text/javascript" src="/Include/Javascript/jquery.ad-gallery.js"></script>
<%--    <script language="javascript" type="text/javascript">
        $(function () {
            var galleries = $('.ad-gallery').adGallery();
        });

        $(function () {
            ShowMenu("GalleryDiv");
        });
    </script>--%>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="GalleryBannerDiv"><img alt="" src="/Image/Banner/GalleryBanner.jpg" /></div>
    
    <div class="RightDiv">
        <div class="ProductTitleDiv">
            <div class="IconDiv"><img alt="Pintura" src="/Image/Icon/PhotographyIcon.jpg" /></div>
            <div class="TitleDiv">Galería de imágenes</div>
        </div>
    </div>

    <%--<div id="gallery" class="ad-gallery">
        <div class="ad-image-wrapper"></div>

        <div class="ad-controls"></div>

        <div class="ad-nav">
            <div class="ad-thumbs">
                <ul class="ad-thumb-list">
                    <li>
                        <a href="/Image/Photo/img1.jpg">
                            <img alt="" src="/Image/Photo/img1.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img2.jpg">
                            <img alt="" src="/Image/Photo/img2.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img3.jpg">
                            <img alt="" src="/Image/Photo/img3.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img4.jpg">
                            <img alt="" src="/Image/Photo/img4.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img5.jpg">
                            <img alt="" src="/Image/Photo/img5.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img6.jpg">
                            <img alt="" src="/Image/Photo/img6.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img7.jpg">
                            <img alt="" src="/Image/Photo/img7.jpg" title="" />
                        </a>
                    </li>
                    <li>
                        <a href="/Image/Photo/img8.jpg">
                            <img alt="" src="/Image/Photo/img8.jpg" title="" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>--%>
</asp:Content>
