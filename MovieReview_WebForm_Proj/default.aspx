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
                    <td><a href="MoviePage.aspx?id=<%=review.Movie.Id %>"><%=review.Movie.Title %></a></td>
                    <td><%=review.Name %></td>
                    <td><%=review.Rating %></td>
                </tr>
                <%} %>
            </tbody>
        </table>
        
        <br />
        <form class="form-inline">
            <div class="form-group">
                <label for="movieToReview">Choose Movie</label>
                <select class="form-control" id="movieToReview">
                    <%foreach (var movie in Movies)
                        {%>
                    <option><%=movie.Title %></option>
                    <%} %>
                </select>                
            </div>
            <button type="submit" class="btn btn-default">Review Movie</button>
            <a type="button" class="btn btn-default" href="CreateMovie.aspx">New Movie</a>
        </form>


    </div>
</body>
</html>
