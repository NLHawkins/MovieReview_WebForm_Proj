<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="MovieReview_WebForm_Proj.EditMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Reviews</title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container">
        <h1><%=movieInstance.Title%></h1>
        
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
                    
                    <tr>
                        <td>
                            <div class="btn-group" role="group" aria-label="...">
                                <button type="button" class="btn btn-default"  data-toggle="modal" data-target="#myModal">
                                    <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                    Edit</button>
                                <a type="button" class="btn btn-default" href="CreateReview.aspx?id=<%=movieInstance.Id %>">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    Save and Review</a>
                                <a type="button" class="btn btn-default" href="default.aspx">
                                    <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                    Cancel</a>
                            </div>

                        </td>
                        <td><a href="MoviePage.aspx?id=<%= movieInstance.Id %>" /><%=movieInstance.Title %></td>
                        <td>
                            <%= movieInstance.Genre %></td>
                        <td>
                            <%= movieInstance.Link %></td>
                        <td>
                            <%= movieInstance.Release %></td>
                    </tr>
                   
                </tbody>
            </table>
        
    </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form id="form1" runat="server">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Create Your Review for <%=movieInstance.Title %></h4>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <div><%=movieInstance.Title %></div>
                            <div>
                                <input class="form-control" type="text" value="<%= movieInstance.Genre %>" name="movieGenre" placeholder="Genre" />
                            </div>
                            <div>
                                <input class="form-control" type="url" value="<%= movieInstance.Link %>" name="movieLink" placeholder="Url" />
                            </div>
                            <div>
                                <input class="form-control" type="date" value="<%= movieInstance.Release %>" name="movieRelease" placeholder="Realease Date" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <input type="submit" class="btn btn-primary" value="Save Changes" />
                    </div>
                </div>
            </form>
            
        </div>
        <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
            <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    </div>
</body>
</html>
