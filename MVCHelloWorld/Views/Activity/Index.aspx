<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<MVCHelloWorld.Models.Activity>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>


    <table>
        <tr>
            <th></th>
            <th>
                activityid
            </th>
            <th>
                personid
            </th>
            <th>
                date
            </th>
            <th>
                sportid
            </th>
            <th>
                description
            </th>
            <th>
                kilometres
            </th>
            <th>
                hours
            </th>
            <th>
                comment
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.activityid }) %> |
                <%= Html.ActionLink("Details", "Details", new { id=item.activityid })%>
            </td>
            <td>
                <%= Html.Encode(item.activityid) %>
            </td>
            <td>
                <%= Html.Encode(item.personid) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.date)) %>
            </td>
            <td>
                <%= Html.Encode(item.sportid) %>
            </td>
            <td>
                <%= Html.Encode(item.description) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:F}", item.kilometres)) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:F}", item.hours)) %>
            </td>
            <td>
                <%= Html.Encode(item.comment) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

