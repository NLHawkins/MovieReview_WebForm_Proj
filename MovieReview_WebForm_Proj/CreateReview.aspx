<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateReview.aspx.cs" Inherits="MovieReview_WebForm_Proj.CreateReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h2>Create Your Review</h2>
    <div class="container">
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
                    <input type="submit" class="btn btn-default" value="Create Review" />
                </div>
                <div class="col-lg-4 ">
                    <a type="button" class="btn btn-default" href="default.aspx">Cancel</a>
                </div>
            </div>
        </form>
    </div>

</body>
</html>
