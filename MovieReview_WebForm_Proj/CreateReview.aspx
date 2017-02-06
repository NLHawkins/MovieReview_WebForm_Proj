<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateReview.aspx.cs" Inherits="MovieReview_WebForm_Proj.CreateReview" %>

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
        <form class="form-horizontal" action="AddReview.aspx" method="post">
            <div class="form-group">
                <label for="movieDropdown" class="col-sm-2 control-label ">Movie</label>
                <div class="col-sm-10">
                    <select class="form-control" name="reviewMovieName">
                        <% foreach (var movie in Movies)
                            {%>
                        <%if (movie.Id == int.Parse(Request.QueryString["id"]))
                            {%>

                        <option selected="selected"><%=movie.Title %></option>
                        <% }%>
                        <%else
                            {%>
                        <option><%=movie.Title %></option>
                        <%} %>
                        <%} %>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <input type="hidden" name="movieId" value="<%=Request.QueryString["id"]%>" />
            </div>

            <div class="form-group">
                <label for="ReviewerName" class="col-sm-2 control-label">Your Name</label>
                <div class="col-sm-10">
                    <input class="form-control" name="reviewerName" placeholder="Your Name" />
                </div>
            </div>
            <div class="form-group">
                <label for="ratingDropdown" class="col-sm-2 control-label ">Rating</label>
                <div class="col-sm-10">
                    <select class="form-control" name="rating">
                        <%for (int i = 1; i < 11; i++)
                            { %>
                        <option><%=i%></option>
                        <% } %>
                    </select>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-4 ">
                    <input type="submit" class="btn btn-warning" value="Create Review" />
                </div>
                <div class="col-lg-4 ">
                    <a type="button" class="btn btn-warning" href="default.aspx">Cancel</a>
                </div>
            </div>
        </form>
    </div>

    <div id="footer">
        <div class="container">
            <p class="text-muted">This Page made by: <a href="https://github.com/NLHawkins">Nathan Hawkins</a></p>
        </div>
    </div>
</body>
</html>
