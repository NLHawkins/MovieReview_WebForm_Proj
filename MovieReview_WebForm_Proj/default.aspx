<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MovieReview_WebForm_Proj._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    
    <link href="app.css" rel="stylesheet" type="text/css" />


</head>
<body>
    
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="ItemList.html">TIY Movie DB</a>
            </div>
            <div class="collapse navbar-collapse" id="MRnavbar">
                <ul class="nav navbar-nav">
                    <li><a href="MoviePage.aspx">Movies</a></li>
                    <li><a href="default.aspx">Reviews</a></li>
                </ul>
            </div>
        </div>
    </nav>
   

    <div class="container">
        <h1></h1>
        <br />
        <br />
        <br />
        <br />
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

     <div id="footer">
            <div class="container">
                <p class="text-muted">This Page made by: <a href="https://github.com/NLHawkins">Nathan Hawkins</a></p>
            </div>
        </div>
</body>
</html>
