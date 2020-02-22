<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Education_Training.aspx.cs" Inherits="WebApplication1.UI.Education_Training" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Education Training</title>
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
   
</head>
<body>
       <nav class="navbar navbar-expand-sm navbar-dark justify-content-center">
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
            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#Academic_Summary"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Academic Summary</button>

            </div>
            <div id="Academic_Summary" class="collapse in ccc">
                <h3>Academic 1</h3>

                <div class="row border">

                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Level Of Education&nbsp;</label>
                            <input type="text" name="levelofeducation" id="levelofeducation" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Exam/Degree Title&nbsp;</label>
                            <input type="text" name="degreetitle" id="degreetitle" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Concentration/Major/Group&nbsp;<small>(job Level)</small>&nbsp;</label>
                            <input type="text" name="major_group" id="major_group" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Institute Name&nbsp;<small>(job Level)</small>&nbsp;</label>
                            <input type="text" name="institutename" id="institutename" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Achievement1&nbsp;<small>(job Level)</small>&nbsp;</label>
                            <input type="text" name="achivement" id="achivement" class="form-control" value="" runat="server" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">

                            <asp:Button ID="editEducationButton" class="btn btn-primary float-lg-right" type="Submit" runat="server" Text="Edit" OnClick="editEducationButton_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="deleteEducationButton" class="btn btn-primary btn-danger float-lg-right" type="Submit" runat="server" Text="Delete" OnClick="deleteEducationButton_Click" />

                        </div>

                        <br />
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        <div class="form-group">
                            <label>Result&nbsp;</label>
                            <input type="text" name="result" id="result" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Year of passing&nbsp;</label>
                            <input type="text" name="yearofpassing" id="yearofpassing" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Duration&nbsp;<small>(job Nature)</small>&nbsp;</label>
                            <input type="text" name="duration" id="duration" class="form-control" value="" runat="server" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="updateEducationButton" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="updateEducationButton_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                            <asp:Button ID="cancleEducationButton" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />

                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>


            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#Training_Summary"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Training Summary</button>

            </div>
            <div id="Training_Summary" class="collapse in ccc">
                <h3>Training 1</h3>

                <div class="row border">

                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Training Title&nbsp;</label>
                            <input type="text" name="trainingtitle" id="trainingtitle" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Topic Covered&nbsp;</label>
                            <input type="text" name="topicovered" id="topicovered" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Institute&nbsp;<small>(job Level)</small>&nbsp;</label>
                            <input type="text" name="traininginstitute" id="traininginstitute" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Location&nbsp;<small>(job Level)</small>&nbsp;</label>
                            <input type="text" name="traininglocation" id="traininglocation" class="form-control" value="" runat="server" />
                        </div>

                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Button ID="trainingEditButton" class="btn btn-primary float-lg-right" type="Submit" runat="server" Text="Edit" OnClick="trainingEditButton_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="deleteTrainingButton" class="btn btn-primary btn-danger float-lg-right" type="Submit" runat="server" Text="Delete" OnClick="deleteTrainingButton_Click" />
                        </div>

                        <br />
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                        <div class="form-group">
                            <label>Country&nbsp;</label>
                            <input type="text" name="trainingcountry" id="trainingcountry" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Training Year&nbsp;</label>
                            <input type="text" name="trainingyear" id="trainingyear" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>training Duration&nbsp;<small>(job Nature)</small>&nbsp;</label>
                            <input type="text" name="traingingduration" id="traingingduration" class="form-control" value="" runat="server" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="updateTrainingButton" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="updateTrainingButton_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                            <asp:Button ID="trainingCancleButton" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>


            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#Professional_Certification_Summary"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Professional Certification Summary</button>

            </div>
            <div id="Professional_Certification_Summary" class="collapse in ccc">
                <h3>Training 1</h3>

                <div class="row border">

                    <div class="col-md-6">
                    </div>

                    <div class="col-md-6">
                    </div>
                    <div class="col-md-6">
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>
        </div>
    </form>


     <script type="text/javascript">
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
</body>
</html>
