<%@ Page Title="" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Content_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightPanelContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageToolbar" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageContent" Runat="Server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataSourceID="GNDetailDataSource" KeyFieldName="ID">
        <SettingsPager Visible="False"></SettingsPager>

        <Columns>
            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True" Visible="False" VisibleIndex="0">
                <EditFormSettings Visible="False"></EditFormSettings>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="1"></dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="2"></dx:GridViewDataTextColumn>
            <dx:GridViewDataBinaryImageColumn FieldName="Image" VisibleIndex="3">
                <PropertiesBinaryImage ImageHeight="150px" ImageWidth="150px">
                    <EditingSettings Enabled="True"></EditingSettings>
                </PropertiesBinaryImage>
            </dx:GridViewDataBinaryImageColumn>
        </Columns>
    </dx:ASPxGridView>
    <asp:SqlDataSource runat="server" ID="GNDetailDataSource" ConnectionString='<%$ ConnectionStrings:GNDetailDataSource %>' SelectCommand="SELECT [ID], [Name], [Description], [Image] FROM [GNProducts] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="ID" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
</asp:Content>


