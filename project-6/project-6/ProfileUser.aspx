<%@ Page Title="" Language="C#" MasterPageFile="~/page.Master" AutoEventWireup="true" CodeBehind="ProfileUser.aspx.cs" Inherits="project_6.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<style>
    .btn-warning {
    color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}
    .nav{
        padding-left:0 !important;
        display:grid !important;
        grid-template-columns:auto!important;
    }
    body {
    color: #797979;
    background: #f1f2f7;
    font-family: 'Open Sans', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
    -moz-font-smoothing: antialiased;
}

.profile-nav, .profile-info{
    margin-top:30px;   
}

.profile-nav .user-heading {
    background:#F2F0F1;
    color: #fff;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    padding: 30px;
    text-align: center;
}

.profile-nav .user-heading.round a  {
    border-radius: 50%;
    -webkit-border-radius: 50%;
    border: 10px solid rgba(255,255,255,0.3);
    display: inline-block;
}

.profile-nav .user-heading a img {
    width: 112px;
    height: 112px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
}

.profile-nav .user-heading h1 {
    color:black;
    font-size: 22px;
    font-weight: 300;
    margin-bottom: 5px;
}

.profile-nav .user-heading p {
    color:black;
    font-size: 12px;
}

.profile-nav ul {
    margin-top: 1px;
}

.profile-nav ul > li {
    border-bottom: 1px solid #ebeae6;
    margin-top: 0;
    line-height: 30px;
}

.profile-nav ul > li:last-child {
    border-bottom: none;
}

.profile-nav ul > li > a {
    border-radius: 0;
    -webkit-border-radius: 0;
    color: #89817f;
    border-left: 5px solid #fff;
}

.profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active  a {
    background: #f8f7f5 !important;
    border-left: 5px solid #fbc02d;
    color: #89817f !important;
}

.profile-nav ul > li:last-child > a:last-child {
    border-radius: 0 0 4px 4px;
    -webkit-border-radius: 0 0 4px 4px;
}

.profile-nav ul > li > a > i{
    font-size: 16px;
    padding-right: 10px;
    color: #bcb3aa;
}

.r-activity {
    margin: 6px 0 0;
    font-size: 12px;
}


.p-text-area, .p-text-area:focus {
    border: none;
    font-weight: 300;
    box-shadow: none;
    color: #c3c3c3;
    font-size: 16px;
}

.profile-info .panel-footer {
    background-color:#f8f7f5 ;
    border-top: 1px solid #e7ebee;
}

.profile-info .panel-footer ul li a {
    color: #7a7a7a;
}

.bio-graph-heading {
    background:#F2F0F1;
    color: black;
    text-align: center;
    font-style: italic;
    padding: 40px 110px;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    font-size: 16px;
    font-weight: 300;
}

.bio-graph-info {
    color: #89817e;
}

.bio-graph-info h1 {
    font-size: 22px;
    font-weight: 300;
    margin: 0 0 20px;
}

.bio-row {
    width: 50%;
    float: left;
    margin-bottom: 10px;
    padding:0 15px;
}

.bio-row p span {
    width: 100px;
    display: inline-block;
}

.bio-chart, .bio-desk {
    float: left;
}

.bio-chart {
    width: 40%;
}

.bio-desk {
    width: 60%;
}

.bio-desk h4 {
    font-size: 15px;
    font-weight:400;
}

.bio-desk h4.terques {
    color: #4CC5CD;
}

.bio-desk h4.red {
    color: #e26b7f;
}

.bio-desk h4.green {
    color: #97be4b;
}

.bio-desk h4.purple {
    color: #caa3da;
}

.file-pos {
    margin: 6px 0 10px 0;
}

.profile-activity h5 {
    font-weight: 300;
    margin-top: 0;
    color: #c3c3c3;
}

.summary-head {
    background: #ee7272;
    color: #fff;
    text-align: center;
    border-bottom: 1px solid #ee7272;
}

.summary-head h4 {
    font-weight: 300;
    text-transform: uppercase;
    margin-bottom: 5px;
}

.summary-head p {
    color: rgba(255,255,255,0.6);
}

ul.summary-list {
    display: inline-block;
    padding-left:0 ;
    width: 100%;
    margin-bottom: 0;
}

ul.summary-list > li {
    display: inline-block;
    width: 19.5%;
    text-align: center;
}

ul.summary-list > li > a > i {
    display:block;
    font-size: 18px;
    padding-bottom: 5px;
}

ul.summary-list > li > a {
    padding: 10px 0;
    display: inline-block;
    color: #818181;
}

ul.summary-list > li  {
    border-right: 1px solid #eaeaea;
}

ul.summary-list > li:last-child  {
    border-right: none;
}

.activity {
    width: 100%;
    float: left;
    margin-bottom: 10px;
}

.activity.alt {
    width: 100%;
    float: right;
    margin-bottom: 10px;
}

.activity span {
    float: left;
}

.activity.alt span {
    float: right;
}
.activity span, .activity.alt span {
    width: 45px;
    height: 45px;
    line-height: 45px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    background: #eee;
    text-align: center;
    color: #fff;
    font-size: 16px;
}

.activity.terques span {
    background: #8dd7d6;
}

.activity.terques h4 {
    color: #8dd7d6;
}
.activity.purple span {
    background: #b984dc;
}

.activity.purple h4 {
    color: #b984dc;
}
.activity.blue span {
    background: #90b4e6;
}

.activity.blue h4 {
    color: #90b4e6;
}
.activity.green span {
    background: #aec785;
}

.activity.green h4 {
    color: #aec785;
}

.activity h4 {
    margin-top:0 ;
    font-size: 16px;
}

.activity p {
    margin-bottom: 0;
    font-size: 13px;
}

.activity .activity-desk i, .activity.alt .activity-desk i {
    float: left;
    font-size: 18px;
    margin-right: 10px;
    color: #bebebe;
}

.activity .activity-desk {
    margin-left: 70px;
    position: relative;
}

.activity.alt .activity-desk {
    margin-right: 70px;
    position: relative;
}

.activity.alt .activity-desk .panel {
    float: right;
    position: relative;
}

.activity-desk .panel {
    background: #F4F4F4 ;
    display: inline-block;
}


.activity .activity-desk .arrow {
    border-right: 8px solid #F4F4F4 !important;
}
.activity .activity-desk .arrow {
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    display: block;
    height: 0;
    left: -7px;
    position: absolute;
    top: 13px;
    width: 0;
}

.activity-desk .arrow-alt {
    border-left: 8px solid #F4F4F4 !important;
}

.activity-desk .arrow-alt {
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    display: block;
    height: 0;
    right: -7px;
    position: absolute;
    top: 13px;
    width: 0;
}

.activity-desk .album {
    display: inline-block;
    margin-top: 10px;
}

.activity-desk .album a{
    margin-right: 10px;
}

.activity-desk .album a:last-child{
    margin-right: 0px;
}

.editt{
   /* background-color:none;
    border:none;
    padding:0 40px 0 0;
    color:gray;
    text-align:left;*/
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

}
.redd{
    color:red;
}
.save{
    display:flex;
    justify-content:center;
    align-items:center;
    margin:0 auto;
    border-radius:2px;
      color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}

.upload{
   
    align-items:center;
  
    border-radius:2px;
      color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bootstrap snippets bootdey">
<div class="row">
  <div class="profile-nav col-md-3">
      <div class="panel">
          <div class="user-heading round">
              <a href="#">
                  <asp:Image Height="150px" ID="Image1" runat="server"  />
<%--                  <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">--%>
              </a>
              
                            <h1><asp:Label ID="name" runat="server" Text=""></asp:Label></h1>
              
              <p><asp:Label ID="email" runat="server" Text=""></asp:Label></p>
          </div>

          <ul class="nav nav-pills nav-stacked">

              <li class="active"><a href="#"> <i class="fa fa-user"></i>   <asp:Button ID="Button4" runat="server" Text="profile"   CssClass="editt" OnClick="Button4_Click1"/>  </a></li>


             <%-- <li class="active"><a href="#"> <i class="fa fa-user"></i> Profile</a></li--%>><br />
              <li><a href="#"> <i class="fa fa-calendar"></i> Recent Activity <span class="label label-warning pull-right r-activity">9</span></a></li>
<%--              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">              <li><a href="#"> <i class="fa fa-edit"></i> Edit profile</a></li>
</asp:LinkButton>--%>

              
                                      <li> <a href="#"><i class="fa fa-edit"></i> <asp:Button ID="Button3" runat="server" Text=" Edit profile "  CssClass="editt" OnClick="Button3_Click"/></a>  </li>

          </ul>
      </div>
  </div>
  <div class="profile-info col-md-9">
      <div class="panel">
          <form>
              <textarea placeholder="Whats in your mind today?" rows="2" class="form-control input-lg p-text-area"></textarea>
          </form>
          <footer class="panel-footer">
              <button class="btn btn-warning pull-right">Post</button>
           <%--   <ul class="nav nav-pills">
                  <li>
                      <a href="#"><i class="fa fa-map-marker"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-camera"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class=" fa fa-film"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-microphone"></i></a>
                  </li>
              </ul>--%>
          </footer>
      </div>
      <div class="panel">
          <div class="bio-graph-heading">
              Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
          </div>
          <div class="panel-body bio-graph-info">
              <h1>Bio Graph</h1>
              <div id="userInfo" runat="server">
                  <div class="row" >
                      <div class="bio-row">
                          <p><span> Name </span><asp:Label ID="name1" runat="server" Text="" ></asp:Label></p>
                      </div>

                      <div class="bio-row">
                          <p><span>Address </span><asp:Label ID="address" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>City </span><asp:Label ID="city" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>Gender</span><asp:Label ID="gender" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>Mobile </span><asp:Label ID="mobile" runat="server" Text=""></asp:Label></p>
                      </div>
                      <div class="bio-row">
                          <p><span>Emargency </span><asp:Label ID="emargency" runat="server" Text=""></asp:Label></p>
                      </div>  
                  </div>
                </div>
              <%--div2edit--%>
             <div id="userEdit" runat="server">
                  <div class="row" >
                      <div class="bio-row">
                          <p><span> Name </span><asp:TextBox CssClass="form-control" ID="name2" runat="server" ValidationGroup="textt"></asp:TextBox></p>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="name2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row">
                          <p><span>Address </span><asp:TextBox CssClass="form-control" ID="address1" runat="server"></asp:TextBox></p>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="address1" CssClass="redd"></asp:RequiredFieldValidator>

                      </div>
                      <div class="bio-row">
                          <p><span>City </span><asp:TextBox CssClass="form-control" ID="city2" runat="server"></asp:TextBox></p>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="city2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row" cssclass=".redd">
                          <p><span>Gender</span><asp:TextBox CssClass="form-control" ID="gender2" runat="server"></asp:TextBox></p>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="gender2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row">
                          <p><span>Mobile </span><asp:TextBox CssClass="form-control" ID="mobile2" runat="server"></asp:TextBox></p>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="mobile2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div>
                      <div class="bio-row">
                          <p><span>Emargency </span><asp:TextBox CssClass="form-control" ID="emargency2" runat="server"></asp:TextBox></p>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="textt" ControlToValidate="emargency2" CssClass="redd"></asp:RequiredFieldValidator>
                      </div> 
                      <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="Button2" runat="server" Text="Upload" OnClick="Button2_Click"  CssClass="upload"/>
                  </div>
                 <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" ValidationGroup="textt" CssClass="save" />
                </div>
               <%--div2edit--%>
          </div>
      </div>
      <div>
        <%--  <div class="row">
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="35" data-fgcolor="#e06b7d" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(224, 107, 125); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="red">Envato Website</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="63" data-fgcolor="#4CC5CD" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(76, 197, 205); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="terques">ThemeForest CMS </h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="75" data-fgcolor="#96be4b" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(150, 190, 75); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="green">VectorLab Portfolio</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="50" data-fgcolor="#cba4db" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(203, 164, 219); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="purple">Adobe Muse Template</h4>
                              <p>Started : 15 July</p>
                              <p>Deadline : 15 August</p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>--%>
      </div>
  </div>
</div>
</div>
</asp:Content>
