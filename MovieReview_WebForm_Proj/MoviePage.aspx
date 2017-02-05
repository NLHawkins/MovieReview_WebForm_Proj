<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoviePage.aspx.cs" Inherits="MovieReview_WebForm_Proj.MoviePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <div class="container">
        <h1>Reviews for "Movie"</h1>
        <table class="table">
            <thead>
                <tr>
                    <th></th>
                    <th>Movie</th>
                    <th>Genre</th>
                    <th>Link</th>
                    <th>Release Date</th>
                </tr>
            </thead>
            <tbody>
                <%foreach (var movie in Movies)
                    {%>
                <tr>
                    <td>
                        <div class="btn-group" role="group" aria-label="...">
                            <a type="button" class="btn btn-default" href="EditMovie.aspx?id=<%=movie.Id %>">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                Edit</a>
                            <a type="button" class="btn btn-default" href="CreateReview.aspx?id=<%=movie.Id %>">
                                <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                Review</a>
                        </div>

                    </td>
                    <td><%=movie.Title %></td>
                    <td><%=movie.Genre %></td>
                    <td><%=movie.Link %></td>
                    <td><%=movie.Release %></td>
                </tr>
                <%} %>
            </tbody>
        </table>
        
        
        <br />


    </div>
</body>
</html>
