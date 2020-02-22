<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="WebApplication1.PersonalDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Information</title>
    <%--  <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>--%>
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

    <form runat="server" id="personalForm">
        <div class="container">


            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#Personal_details"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Personal Details</button>

            </div>
            <div id="Personal_details" class="collapse in ccc">

                <div class="row border">






                    <div class="col-md-6">

                        <div class="form-group">
                            <label>First Name</label>
                            <input type="text" name="FirstName" class="form-control" value="" id="FirstName" runat="server" />



                        </div>

                        <div class="form-group">
                            <label>Last Name</label>
                            <input type="text" name="LastName" class="form-control" value="" id="LastName" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Father's Name</label>
                            <input type="text" name="FathersName" class="form-control" value="" id="FathersName" runat="server" />

                        </div>

                        <div class="form-group">
                            <label>Mother's Name</label>
                            <input type="text" name="MothersName" class="form-control" value="" id="MothersName" runat="server" />

                        </div>

                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="DateTime" name="DOB" class="form-control datepicker" value="" id="DOB" runat="server" />
                            
                        </div>


                        <div class="form-group">
                            <label>Gender&nbsp;</label>
                            <select name="Gender" id="Gender" class="form-control" runat="server">
                                <option value="-1">Select</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>


                        <div class="form-group">
                            <label>Religion&nbsp;</label>
                            <select name="Religion" id="Religion" class="form-control" runat="server">
                                <option value="-1">Select</option>
                                <option value="Islam">Islam</option>
                                <option value="Hindu">Hindu</option>
                                <option value="Others">Others</option>
                            </select>

                        </div>


                        <div class="form-group">
                            <label for="">Marital Status&nbsp;</label>
                            <select name="MStatus" id="MStatus" class="form-control" runat="server">
                                <option value="-1" selected="selected">Select</option>
                                <option value="2">Unmarried</option>
                                <option value="1">Married </option>
                                <option value="3">Single </option>
                            </select>
                        </div>


                    </div>

                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Nationality</label>
                            <input type="text" name="Nationality" id="Nationality" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>National Id No</label>
                            <input type="text" name="NationalIdNo" id="NationalIdNo" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Passport Id</label>
                            <input type="text" name="PassportId" id="PassportId" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Passport Issue Date</label>
                            <input type="datetime" name="PassportIssueDate" id="PassportIssueDate" class="form-control datepicker" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Mobile NO 1<small class="btn-form-control hidden color-green">(Provide at least one Phone Number)</small></label>
                            <input type="text" name="MobileNo1" id="MobileNo1" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Mobile NO 2</label>
                            <input type="text" name="MobileNo2" id="MobileNo2" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Mobile NO 3</label>
                            <input type="text" name="MobileNo3" id="MobileNo3" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>
                                Email
                        <small class="btn-form-control hidden color-green"><i class="fas fa-plus-circle"></i>&nbsp;Change User Id</small></label>
                            <input type="text" class="form-control" id="txtEmail1" placeholder="" value="" name="txtEmail1" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Alternate Email</label>
                            <input type="text" class="form-control" placeholder="" id="txtEmail2" value="" name="txtEmail2" runat="server" />

                        </div>


                    </div>

                     <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="personalbtnsave" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="personalbtnsave_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                            <asp:Button ID="personalCancle" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="EditButton" class="btn btn-primary" type="Submit" runat="server" Text="Edit" OnClick="personalinformation_editButton_Click"/>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />



            </div>

            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#Addressdetails"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Address Details</button>

            </div>
            <div id="Addressdetails" class="collapse in ccc">

                <div class="row border">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Present Address&nbsp;</label>
                            <textarea type="text" name="presentAdd" class="form-control" runat="server" value="" id="presentAdd" cols="20" rows="2"></textarea>

                        </div>

                    </div>

                    <div class="col-md-6">

                        <div class="form-group">
                            <label>permanent Address&nbsp;</label>
                            <textarea type="text" name="permanentAdd" class="form-control" runat="server" value="" id="permanentAdd" cols="20" rows="2"></textarea>
                        </div>

                    </div>
                     <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="saveAddressButton" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="personalbtnsave_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                            <asp:Button ID="cancelAddressButton" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="editAddressButton" class="btn btn-primary" type="Submit" runat="server" Text="Edit" OnClick="personalinformation_editButton_Click" />
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>


            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#career"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Career and Application Information</button>

            </div>
            <div id="career" class="collapse in ccc">

                <div class="row border">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Objective&nbsp;</label>
                            <input type="text" name="Objective" id="Objective" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Present Salary&nbsp;</label>
                            <input type="text" name="PresentSalary" id="PresentSalary" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Looking for&nbsp;<small>(job Level)</small>&nbsp;</label>
                            <input type="text" name="jobLevel" id="jobLevel" class="form-control" value="" runat="server" />
                        </div>
                    </div>

                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Permanent Address&nbsp;</label>
                            <input type="text" name="permanentAddress1" id="permanentAddress1" class="form-control" value="" runat="server" />
                        </div>
                        <div class="form-group">
                            <label>Expected Salary&nbsp;</label>
                            <input type="text" name="ExpectedSalary" id="ExpectedSalary" class="form-control" value="" runat="server" />
                        </div>

                        <div class="form-group">
                            <label>Available for&nbsp;<small>(job Nature)</small>&nbsp;</label>
                            <input type="text" name="jobNature" id="jobNature" class="form-control" value="" runat="server" />
                        </div>
                    </div>
                     <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="careerSaveButton" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="personalbtnsave_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                           
                            <asp:Button ID="careerCancleButton" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="careerEditButton" class="btn btn-primary" type="Submit" runat="server" Text="Edit" OnClick="personalinformation_editButton_Click"/>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>

            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#preferndarea"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Preferred Area</button>

            </div>
            <div id="preferndarea" class="collapse in ccc">

                <div class="row border">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Preferred Job Catagories Functional&nbsp;</label>
                            <input type="text" name="PreferredJobCatagories" id="PreferredJobCatagories" class="form-control" value="" runat="server" />


                        </div>

                        <div class="form-group">
                            <label>Preferred Job Location&nbsp;</label>

                            <input type="text" name="PreferredJobCatagories" id="PreferredJobLocation" class="form-control" value="" runat="server" />
                        </div>

                    </div>

                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Special Skills&nbsp;</label>
                            <input type="text" name="SpecialSkills" id="SpecialSkills" class="form-control" value="" runat="server" />

                        </div>

                    </div>
                      <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="Button1" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="personalbtnsave_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>

                            <asp:Button ID="Button2" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="Button3" class="btn btn-primary" type="Submit" runat="server" Text="Edit" OnClick="personalinformation_editButton_Click"/>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>

            <div class="row">
                <button type="button" class="btn alert alert-dark bwe" data-toggle="collapse" data-target="#otherreleventinformation"
                    style="width: 100%; text-align: left;">
                    <i class="fa fa-plus-circle"></i><i class="fa fa-minus-circle"></i>Other Relevent Information</button>

            </div>
            <div id="otherreleventinformation" class="collapse in ccc">

                <div class="row border">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label>Career Summary&nbsp;</label>
                            <input type="text" name="CareerSummary" id="CareerSummary" class="form-control" value="" runat="server" />


                        </div>

                        <div class="form-group">
                            <label>Special Qualification&nbsp;</label>
                            <input type="text" name="SpecialQualification" id="SpecialQualification" class="form-control" value="" runat="server" />

                        </div>

                        <div class="form-group">
                            <label>keywords&nbsp;</label>
                            <input type="text" name="keywords" id="keywords" class="form-control" value="" runat="server" />

                        </div>

                    </div>

                    <div class="col-md-6">
                    </div>
                     <div class="col-md-6">
                        <div class="btn-form-control">
                            <asp:Button ID="ReleventinformationButton" class="btn btn-primary save" type="Submit" runat="server" Text="Save" OnClick="personalbtnsave_Click" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="Button5" class="btn btn-primary" type="Cancle" runat="server" Text="Cancle" />
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <asp:Button ID="Button6" class="btn btn-primary" type="Submit" runat="server" Text="Edit" OnClick="personalinformation_editButton_Click"/>
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <br />


            </div>

        </div>
    </form>
    
  


</body>
</html>
