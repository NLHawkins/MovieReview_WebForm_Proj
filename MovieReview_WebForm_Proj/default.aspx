<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MovieReview_WebForm_Proj._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div class="container">
        <h1>Movie Reviews</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Movie</th>
                    <th>Reviewer</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var review in Reviews)
                    {%>
                <tr>
                    <td><%=review.Movie.Title %></td>
                    <td><%=review.Name %></td>
                    <td><%=review.Rating %></td>
                </tr>
                <%} %>
            </tbody>
        </table>
        
        <br />
        <br />

        <br />

        
            <a type="button" class="btn btn-default" href="MoviePage.aspx">Review a Movie</a>
        


    </div>
</body>
</html>
