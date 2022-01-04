<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="RightPanelContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageToolbar" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageContent" Runat="Server">
    <dx:ASPxGridView ID="ASPxGridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="GNDataSource" KeyFieldName="ID" Theme="Office365" EnableTheming="True">

        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True" ShowDeleteButton="True" ShowNewButtonInHeader="True"></dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="1" ReadOnly="True" Visible="False">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3"></dx:GridViewDataTextColumn>
            <dx:GridViewDataBinaryImageColumn FieldName="Image" VisibleIndex="4">
                <PropertiesBinaryImage ImageHeight="150px" ImageWidth="150px">
                    <EditingSettings Enabled="True"></EditingSettings>
                </PropertiesBinaryImage>
            </dx:GridViewDataBinaryImageColumn>

            <dx:GridViewDataHyperLinkColumn PropertiesHyperLinkEdit-NavigateUrlFormatString="Details.aspx?ID={0}" FieldName="ID" Caption="Details" VisibleIndex="5" ReadOnly="True">
                <PropertiesHyperLinkEdit NavigateUrlFormatString="Details.aspx?ID={0}" Text="Click for Details"></PropertiesHyperLinkEdit>
                <EditFormSettings Visible="False" CaptionLocation="None"></EditFormSettings>
            </dx:GridViewDataHyperLinkColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="GNDataSource" ConnectionString='<%$ ConnectionStrings:GNProductsConnectionString %>' DeleteCommand="DELETE FROM [GNProducts] WHERE [ID] = @ID" InsertCommand="INSERT INTO [GNProducts] ([Name], [Description], [Image]) VALUES (@Name, @Description, @Image)" SelectCommand="SELECT [ID], [Name], [Description], [Image] FROM [GNProducts]" UpdateCommand="UPDATE [GNProducts] SET [Name] = @Name, [Description] = @Description, [Image] = @Image WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" DbType="Binary"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" DbType="Binary"></asp:Parameter>
            <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:GNConnectionString %>' DeleteCommand="DELETE FROM [Products] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Products] ([Name], [Description], [Image]) VALUES (@Name, @Description, @Image)" SelectCommand="SELECT [ID], [Name], [Description], [Image] FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [Image] = @Image WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" DbType="Binary"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="Description" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" DbType="Binary" ></asp:Parameter>
            <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

