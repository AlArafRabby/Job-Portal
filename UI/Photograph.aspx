<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Photograph.aspx.cs" Inherits="WebApplication1.UI.Photograph" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photograph</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
     <style>
        .bs-example {
            margin: 20px;
        }

        .accordion .fa {
            margin-right: 0.5rem;
        }

        #container ul {
            list-style: none;
        }

            #container ul li {
                background-color: #808080;
                width: 150px;
                border: 2px solid black;
                line-height: 50px;
                text-align: center;
                float: left;
                color: white;
                font-size: 15px;
            }

                #container ul li:hover {
                    background-color: black;
                }
    </style>
    <script>
        $(document).ready(function () {
            // Add minus icon for collapse element which is open by default
            $(".collapse.show").each(function () {
                $(this).prev(".card-header").find(".fa").addClass("fa-minus").removeClass("fa-plus");
            });

            // Toggle plus minus icon on show hide of collapse element
            $(".collapse").on('show.bs.collapse', function () {
                $(this).prev(".card-header").find(".fa").removeClass("fa-plus").addClass("fa-minus");
            }).on('hide.bs.collapse', function () {
                $(this).prev(".card-header").find(".fa").removeClass("fa-minus").addClass("fa-plus");
            });
        });
    </script>
</head>
<body>

     <nav class="navbar navbar-expand-sm navbar-dark sticky-top justify-content-center">
        <div id="container">
            <ul>
                <a href="PersonalDetails.aspx">
                    <li>
                        <i class="fa fa-user-circle-o" style="font-size: 25px; color: white"></i>
                        <br />
                        Personal</li>
                </a>
                <a href="Education_Training.aspx">
                    <li>
                        <i class="fa fa-graduation-cap" style="font-size: 25px; color: white"></i>
                        <br />
                        Education/Training</li>
                </a>
                <a href="EmploymentHistory.aspx">
                    <li>
                        <i class="fa fa-briefcase" style="font-size: 25px; color: white"></i>
                        <br />
                        Employment</li>
                </a>
                <a href="#">
                    <li>
                        <i class="fa fa-paste" style="font-size: 25px; color: white"></i>
                        <br />
                        Other Information</li>
                </a>
                <a href="Photograph.aspx">
                    <li>
                        <i class="fa fa-picture-o" style="font-size: 25px; color: white"></i>
                        <br />
                        Photograph</li>
                </a>

            </ul>

        </div>
    </nav>

    <br />


    <form id="form1" runat="server" >
            <div class="row border">

                 
        <div class="form-group col-md-6" style="margin-left:333px;margin-top:100px;">

            <asp:Image ID="Image1" class="form-group" Height="150px" Width="150px" ImageAlign="Middle" runat="server" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" class="form-group" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnUpload" class="form-group" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            <br />
            <br />
             <asp:Button ID="ChangeButton" class="form-group" runat="server" Text="Change Image" OnClick="ChangeImagebtn_Click" />
            <br />
            <br />
            <asp:Label ID="lblMessage" class="form-group" runat="server"></asp:Label>
            <br />
            <br />
            
            </div>

        </div>
    </form>
</body>
</html>
