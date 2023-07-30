﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/Admin.master" AutoEventWireup="true" CodeFile="activity.aspx.cs" Inherits="SEM_6_FINAL_PROJECT_ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
      /* Add padding to containers */
.container {
padding: 16px;
background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=file]{
width: 50%;
padding: 15px;
margin: 5px 0 22px 0;
display: inline-block;
border: none;
background: #f1f1f1;
}


input[type=text]:focus, input[type=password]:focus {
background-color: #ddd;
outline: none;
}

/* Overwrite default styles of hr */
hr {
border: 1px solid #f1f1f1;
margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
background-color: #04AA6D;
color: white;
padding: 16px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 20%;
opacity: 0.9;
font-size: 15px;
}

.registerbtn:hover {
opacity: 1;
background-color: #ddd;
color: black;
}

.registerbtn1 {
  background-color: #ddd;
color: black;
padding: 16px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 20%;
opacity: 0.9;
font-size: 15px;
}

.registerbtn1:hover {
opacity: 1;
background-color: #04AA6D;
color: white;
}

/* Add a blue text color to links */
a {
color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
background-color: #f1f1f1;
text-align: center;
}
        .v1 {
            text-align: center;
            width: 300px;
        }


        table { 
	width: 750px; 
	border-collapse: collapse; 
	margin:50px auto;
	}

/* Zebra striping */
tr:nth-of-type(odd) { 
	background: #eee; 
	}

th { 
	background: #04AA6D; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border: 1px solid #ccc; 
	text-align: left; 
	font-size: 18px;
	}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	table { 
	  	width: 100%; 
	}

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}
        

}



    </style>
  
    
      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Activity Details
            
          </h1>
          <ol class="breadcrumb">
         
            <li class="active">Activity Details</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
           <!-- <form action="/action_page.php" style="max-width:500px;margin:auto"> -->
            <form id="Form1"  runat="server">
             <div class="container" style="text-align: center;">
                <h1>Activity Details</h1>
                <!-- <p>Please fill in this form to create an account.</p> -->
                <hr>

                <label for="email" style="margin-right: 475px;" ><b>Activity Name</b></label><br>
                 <%-- <asp:TextBox ID="txt_cpassword" runat="server" placeholder="Enter Hotel No" name="email"></asp:TextBox><br /--%>
                 <asp:TextBox ID="txt_aname" runat="server" placeholder="Enter Acivity Name" name="email"></asp:TextBox><br />
            

                <label for="email" style="margin-right: 475px;" ><b>Activity Price</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_aprice" runat="server" placeholder="Enter Activity Price" name="email"></asp:TextBox><br />

                <!-- <label for="email" style="margin-right: 510px;" ><b>Hotel description</b></label><br>
                <input type="text"  placeholder="Enter Contact" name="email" id="email" required><br> -->

                <label for="email" style="margin-right: 440px;" ><b>&nbsp; Activity Requirment</b></label><br>
                 <%-- <asp:TextBox ID="txt_stutas" runat="server" placeholder="Enter Hotel No" name="email"></asp:TextBox><br />--%>
                 <asp:TextBox ID="txt_arequirment" runat="server" placeholder="Enter Requirements" name="email"></asp:TextBox><br />
            
            
                <label for="email" style="margin-right: 475px;" ><b>Activity Place</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:DropDownList ID="DropDownList2" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;" DataSourceID="SqlDataSource2" DataTextField="city_name" DataValueField="city_name" ></asp:DropDownList><br />
              
                   

                 
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT [city_name] FROM [city]"></asp:SqlDataSource>
              
                   

                 
                <label for="psw" style="margin-right: 435px;" ><b>Activity Description</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:TextBox ID="txt_adescription" runat="server" placeholder="Enter Activity Description" name="email"></asp:TextBox><br />
            
                <label for="psw-repeat" style="margin-right: 530px;" ><b>Photo</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%><%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:FileUpload ID="FileUpload1" type="file" runat="server" /><br />

                 <asp:Label ID="Label1" runat="server" style="margin-right: -30px;" Text="Label"></asp:Label><br />

                <label for="email" style="margin-right: 520px;" ><b>Status</b></label><br>
                 <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>                <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 

                 <asp:DropDownList ID="DropDownList1" runat="server" style="width: 50%; padding: 15px; margin: 5px 0 22px 0; display: inline-block; border: none; background: #f1f1f1;">
                     <asp:ListItem>On</asp:ListItem>
                     <asp:ListItem>Off</asp:ListItem>
                 </asp:DropDownList>
  
 
</div>
                <hr>


                <!-- <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p> -->
          
                <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:Button ID="Button2" class="registerbtn" style="margin-left: 350px;" runat="server" Text="Add" OnClick="Button2_Click" />
               <%-- <button type="submit" class="registerbtn1"><b>Re-Set</b></button>--%>
                 <asp:Button ID="Button1" class="registerbtn" style="margin-left: 50px;" runat="server" Text="Re-Set" OnClick="Button1_Click" />
                <br />
                <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="activity_name" HeaderText="activity_name" SortExpression="activity_name" />
                        <asp:BoundField DataField="activity_price" HeaderText="activity_price" SortExpression="activity_price" />
                        <asp:BoundField DataField="activity_requirment" HeaderText="activity_requirment" SortExpression="activity_requirment" />
                        <asp:BoundField DataField="actvity_place" HeaderText="actvity_place" SortExpression="actvity_place" />
                        <asp:BoundField DataField="activity_description" HeaderText="activity_description" SortExpression="activity_description" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [activity] WHERE (([actvity_place] = @actvity_place) AND ([status] = @status))">
                    <SelectParameters>
                        <asp:SessionParameter SessionField="city" Name="actvity_place" Type="String"></asp:SessionParameter>
                        <asp:Parameter DefaultValue="on" Name="status" Type="String"></asp:Parameter>
                    </SelectParameters>

                </asp:SqlDataSource>
              </div>
              
              <!-- <div class="container signin">
                <p>Already have an account? <a href="#">Sign in</a>.</p>
              </div> -->
            </form>
            </section><!-- /.content -->
      </div>
    </div><!-- ./wrapper -->

</asp:Content>

