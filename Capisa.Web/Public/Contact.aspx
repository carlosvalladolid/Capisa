<%@ Page Title="" Language="C#" MasterPageFile="~/Include/Template/Public.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Capisa.Web.Public.Contact" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeaderContentPlaceHolder" runat="server">
    
</asp:Content>

<asp:Content ID="BodyContent" ClientIDMode="static" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <div class="ContactBannerDiv"><img alt="" src="/Image/Banner/ContactBanner.jpg" /></div>
    
    <div class="RightDiv">
        <div class="ProductTitleDiv">
            <div class="IconDiv"><img alt="Pintura" src="/Image/Icon/MessageIcon.jpg" /></div>
            <div class="TitleDiv">Contacto</div>
        </div>
    </div>
    <br /><br /><br /><br /><br /><br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="ContactDiv" runat="server">
                <%--<div class="WrapTitleContact">CONTACTO</div><br/><br/><br/>
                    <div class="Text">Por favor llene el siguiente formulario al enviarnos sus comentarios<br/><br/></div>--%>
                        <table class="GeneralTable" cellspacing="5px">
                            <tbody>
                                <tr>
                                    <td class="Field">Nombre:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <asp:TextBox ID="txtName" runat="server" class="MediumTextbox" maxlength="50"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>    
                                    <td class="Field">Empresa:</td>
                                    <td class="RequiredTd"></td>
                                    <td>
                                        <asp:TextBox ID="txtEmpresa" runat="server" class="MediumTextbox" maxlength="50"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">Correo Electrónico:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <asp:TextBox ID="txtCE" runat="server" class="MediumTextbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">Teléfono:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <asp:TextBox ID="txtPhone" runat="server" class="MediumTextbox"></asp:TextBox> 
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">Extensión:</td>
                                    <td class="RequiredTd"></td>
                                    <td>
                                        <asp:TextBox ID="txtExtension" runat="server" class="MediumTextbox"></asp:TextBox> 
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">Ciudad:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <asp:TextBox ID="txtCity" runat="server" class="MediumTextbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">Estado:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <asp:TextBox ID="txtEstado" runat="server" class="MediumTextbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">País:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <asp:TextBox ID="txtPais" runat="server" class="MediumTextbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Field">Comentarios:</td>
                                    <td class="RequiredTd">*</td>
                                    <td>
                                        <textarea name="txtAreaComment" rows="2" cols="20" id="txtAreaComment"  class="MediumTextarea" ></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"></td>
                                </tr>
                                <tr>
                                    <td colspan="3"></td>
                                </tr>
                                <tr>
                                    <td class="SendButtonTd" colspan="3">
                                        <asp:ImageButton ID="ImageButton2" runat="server" 
                                            ImageUrl="~/Image/Button/SendButton.jpg" onclick="btnImgSend_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"> 
                                    <br/>
                                        <asp:Label ID="lblAvisos" ForeColor="Red" runat="server" Height="15px"></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br/><br/>
<%--                        <div class="ButtonDiv">
                            <table class="ButtonTable" cellspacing="20px">
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="btnImgSend" runat="server" 
                                                ImageUrl="~/Image/Button/SendButton.jpg" onclick="btnImgSend_Click" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="btnLimpiar" runat="server" 
                                                ImageUrl="~/Image/Button/limpiar.png" onclick="btnLimpiar_Click"/>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="btnRegresar" runat="server" 
                                                ImageUrl="~/Image/Button/regresar.png" onclick="btnRegresar_Click"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>--%>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
