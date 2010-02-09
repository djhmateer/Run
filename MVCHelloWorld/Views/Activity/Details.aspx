<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MVCHelloWorld.Models.Activity>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        <p>
            activityid:
            <%= Html.Encode(Model.activityid) %>
        </p>
        <p>
            personid:
            <%= Html.Encode(Model.personid) %>
        </p>
        <p>
            date:
            <%= Html.Encode(String.Format("{0:g}", Model.date)) %>
        </p>
        <p>
            sportid:
            <%= Html.Encode(Model.sportid) %>
        </p>
        <p>
            description:
            <%= Html.Encode(Model.description) %>
        </p>
        <p>
            kilometres:
            <%= Html.Encode(String.Format("{0:F}", Model.kilometres)) %>
        </p>
        <p>
            hours:
            <%= Html.Encode(String.Format("{0:F}", Model.hours)) %>
        </p>
        <p>
            comment:
            <%= Html.Encode(Model.comment) %>
        </p>
    </fieldset>
    <p>

        <%=Html.ActionLink("Edit", "Edit", new { id=Model.activityid }) %> |
        <%=Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

