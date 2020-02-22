<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmploymentHistory.aspx.cs" Inherits="WebApplication1.UI.EmploymentHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employment History</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
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

    <form runat="server" id="education_training">
        <div class="container">


            <div class="bs-example form-control">
                <div class="accordion" id="accordionExample">
                    <div class="card">
                        <div class="card-header" id="headingOne">
                            <h2 class="mb-0">
                                <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne"><i class="fa fa-plus"></i>Employment History</button>
                            </h2>
                        </div>
                        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                            <div class="card-body">
                                <div class="row border">

                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label>Company Name&nbsp;</label>
                                            <input type="text" name="companyname" id="companyname" class="form-control" value="" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Company Business&nbsp;</label>
                                            <input type="text" name="companybusiness" id="companybusiness" class="form-control" value="" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Designation&nbsp;<small>(job Level)</small>&nbsp;</label>
                                            <input type="text" name="designation" id="designation" class="form-control" value="" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Department&nbsp;<small>(job Level)</small>&nbsp;</label>
                                            <input type="text" name="department" id="department" class="form-control" value="" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Area of Experiences&nbsp;<small>(job Level)</small>&nbsp;</label>
                                            <input type="text" name="areaofexperiment" id="areaofexperiment" class="form-control" value="" runat="server" />
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <asp:Button ID="editEmploymentButton" class="btn btn-primary float-lg-right" type="Submit" runat="server" Text="Edit" OnClick="editEmploymentButton_Click" />
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <asp:Button ID="deleteEmploymentButton" class="btn btn-primary btn-danger float-lg-right" type="Submit" runat="server" Text="Delete" OnClick="deleteEmploymentButton_Click" />
                                        </div>

                                        <br />
                                        <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                        <div class="form-group">
                                            <label>Responsibilities&nbsp;</label>
                                            <input type="text" name="responsibilities" id="responsibilities" class="form-control" value="" runat="server" />
                                        </div>
                                        <div class="form-group">
                                            <label>Company Location&nbsp;</label>
                                            <input type="text" name="companylocation" id="companylocation" class="form-control" value="" runat="server" />
                                        </div>

                                        <div class="form-group">
                                            <label>Employment Period&nbsp;<small>(job Nature)</small>&nbsp;</label>
                                            <input type="text" name="employmentperiod" id="employmentperiod" class="form-control" value="" runat="server" />
                                        </div>

                                    </div>

                                    <div class="col-md-6">
                                        <div class="btn-form-control">
                                            <asp:Button ID="SaveEmploymentButton" class="btn btn-primary save" type="Submit" runat="server" Text="Save" />
                                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                                            <asp:Button ID="CancleEmploymentButton" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-header" id="headingTwo">
                            <h2 class="mb-0">
                                <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo"><i class="fa fa-plus"></i>Employment History(For Retired Army Person)</button>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                            <div class="card-body">
                                something
                            </div>
                            <br />
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </form>
</body>
</html>
