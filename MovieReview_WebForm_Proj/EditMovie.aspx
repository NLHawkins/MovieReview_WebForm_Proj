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

        <form id="form2" runat="server">

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
                <input type="submit" class="btn btn-default" value="Save Changes"/>
            </div>


        </form>
    </div>

    
</body>
</html>
