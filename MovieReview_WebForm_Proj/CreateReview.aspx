<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateReview.aspx.cs" Inherits="MovieReview_WebForm_Proj.CreateReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Create Your Review</h1>
    <div class="container">
        <form class="form-horizontal">
            <div class="form-group">
                <label for="movieDropdown" class="col-sm-2 control-label ">Movie</label>
                <div class="col-sm-10">
                    <select class="form-control" id="reviewMovieName">
                        <% foreach (var movie in Movies)
                            {
                                if (int.Parse(Request.QueryString["id"]) == movie.Id)
                                {%>
                        <option selected="selected"><%=movie.Title %></option>

                        <%}
                            else
                            {%>
                        <option><%=movie.Title %></option>
                        <% }%>
                        <% }%>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="ReviewerName" class="col-sm-2 control-label">Your Name</label>
                <div class="col-sm-10">
                    <input class="form-control" id="reviewerName" placeholder="Your Name" />
                </div>
            </div>
            <div class="form-group" hidden="hidden">
                <select class="form-control" id="movieId">
                    <% foreach (var movie in Movies)
                        { %>

                    <option selected="selected"><%=movie.Id %></option>


                    <% }%>
                </select>
            </div>
    </div>

    <div class="form-group">
        <label for="ratingDropdown" class="col-sm-2 control-label ">Rating</label>
        <div class="col-sm-10">
            <select class="form-control" id="rating">
                <%for (int i = 1; i < 11; i++)
                    {%>
                <option><%=i%></option>
                <%}%>
            </select>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-4 ">
            <input type="submit" class="btn btn-default" value="Create Review" />
        </div>
        <div class="col-lg-4 ">
            <a type="button" class="btn btn-default" href="default.aspx">Back</a>
        </div>
    </div>
    </form>
            </div>
    
</body>
</html>
