<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="programs.aspx.cs" MasterPageFile="~/Site1.Master" Inherits="proj._6.programs" %>

<asp:Content ID="form1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        .start {
    color: black;
    background-color: #F0E0D6;
    padding:0 15px;
    border:none;
    font-weight:bold;
    font-size:20px;
    
}
    </style>
      <link rel="stylesheet" href="new.css" />
      <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

  <%--  <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>--%>


  
       <div class="Slide class1" id="Slide">
               
            <div class="right">
                    <i class="fa-solid fa-chevron-left" id="leftt"></i>
                </div>
         <div class="left">
                    <i class="fa-solid fa-chevron-right" id="rightt"></i>
                </div>
          
<%--                    <p class="KNOWLEDGE" id="KNOWLEDGE">EXPLORE THE WORLDS KNOWLEDGE</p>
                    <p class="loyal" style="display: none">There is no friend as loyal as a book.</p>
                    <p class="reader" style="display: none">A reader lives a thousand lives before he dies.</p>--%>
             

                </div>
    <div class="volunt">
        <p>

Volunteering with Cultivate is a great way to engage your community. With a wide variety of volunteer opportunities—many with flexible hours—you can find something that suits your passions, skills, or schedule.<br />
Volunteer opportunities are currently available in Broomfield and Boulder Counties.<br />

Scroll down to learn more about our programs and volunteer opportunities. Then submit your volunteer application (Google Form) to get started!

        </p>

    </div>
    <div class="">
      
    </div>



      <script src="programs.js"></script>
    <div class="ourprograms">
    <h1>our programs</h1>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <div class="cardd">
            <div class="imgg" >
                <img src="<%#Eval("imgsrc")%>" />
            </div>
            <div class="desc">
                <h2><%# Eval("name") %></h2>
                <p><%#Eval("descreption") %></p>
                <asp:Button ID="Button1" runat="server" Text="Get staerted"  CssClass="start"/>
            </div>


        </div>


    </ItemTemplate>
</asp:Repeater>
        </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eldaryDBConnectionString %>" SelectCommand="SELECT * FROM [programs]"></asp:SqlDataSource>
    
</asp:Content>