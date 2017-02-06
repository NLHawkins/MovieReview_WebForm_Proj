<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MoviePage.aspx.cs" Inherits="MovieReview_WebForm_Proj.MoviePage" %>

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
        <h1>Movies in Db</h1>
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
        <form class="form-inline" runat="server" action="AddMovie.aspx" method="post">
            <h4>-or-</h4>
            <h3>Add New Movie</h3>
            <div class="form-group">
                <label for="movieTitle">Title</label>
                <input type="text" class="form-control" name="movieTitle" placeholder="Movie Name" />
            </div>
            <div class="form-group">
                <label for="movieGenre">Genre</label>
                <input type="text" class="form-control" name="movieGenre" placeholder="Drama, Comedy, Thriller" />
            </div>
            <div class="form-group">
                <label for="movieLink">Link</label>
                <input type="text" class="form-control" name="movieLink" placeholder="www.thisMovie.com" />
            </div>
            <div class="form-group">
                <label for="movieRelease">Release Date</label>
                <input type="text" class="form-control" name="movieRelease" placeholder="ex. 3/7/1987" />
            </div>
            <button type="submit" class="btn btn-default">Add Movie</button>
        </form>

        <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
        <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    </div>

     <div id="footer">
            <div class="container">
                <p class="text-muted">This Page made by: <a href="https://github.com/NLHawkins">Nathan Hawkins</a></p>
            </div>
        </div>

</body>
</html>
