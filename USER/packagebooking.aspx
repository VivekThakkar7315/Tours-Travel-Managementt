﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="packagebooking.aspx.cs" Inherits="USER_packagebooking" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text],[type=date],[type=range],select {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: blue;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<body style="background-color:cadetblue">
    <form id="Form1" runat="server">
	<h2 align="center">Book Your Package Now</h2>
	
	<div class="row" style="width:1000px;margin-left:300px">
	<div class="col-75">
	<div class="container">
       
      
			<div class="row">
				<div class="col-50">
                     
							<label for="fname"><i class="fa fa-user"></i> Full Name</label>
							<%--	<input type="text" id="fname" name="firstname" placeholder="Nipun B. Rank">--%>

                                    <asp:TextBox ID="f_name" runat="server"></asp:TextBox>
							<label for="email"><i class="fa fa-envelope"></i> Email</label>
								<%--<input type="text" id="email" name="email" placeholder="nr@example.com">--%>

                                         <asp:TextBox ID="email" runat="server"></asp:TextBox>

							<label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
								<%--<input type="text" id="adr" name="address" placeholder="542 W. 15th Street">--%>
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>



                    	<label for="adr"><i class="fa fa-address-card-o"></i> Contact No</label>
								<%--<input type="text" id="adr" name="address" placeholder="542 W. 15th Street">--%>
                    <asp:TextBox ID="contact" runat="server"></asp:TextBox>

                    <label for="city"><i class="fa fa-institution"></i> person</label>
                
                     <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                   

						
								
                    	<label for="city"><i class="fa fa-institution"></i>City </label>
                   <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_name"></asp:DropDownList>

					    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionstring1 %>" ProviderName="<%$ ConnectionStrings:connectionstring1.ProviderName %>" SelectCommand="SELECT * FROM [city]"></asp:SqlDataSource>



					<div class="row">
						<div class="col-50">
							<%--<label for="state">State</label>
								<input type="text" id="state" name="state" placeholder="GJ">--%>
						</div>
						<div class="col-50">
							<%--<label for="zip">Zip</label>
								<input type="text" id="zip" name="zip" placeholder="10001">--%>
						</div>
					</div>
				</div>

          <%--<div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Nipun B. Rank">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="Octomber">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2016">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>--%>
       <%-- <input type="submit" value="Continue to checkout" class="btn">--%>
<%--<video width="400" controls>
  <source src="../ADMIN/upload/Coastline%20-%203581.mp4"  type="video/mp4">
  <source src="mov_bbb.ogg" type="video/ogg">
</video>--%>
        <asp:Button ID="Button1" class="btn" runat="server" Text="Book Now" OnClick="Button1_Click"  />
      </>
    </div>
  </div>
 <%-- <div class="col-25">--%>
   <%-- <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>4</b></span></h4>
      <p><a href="#">Product 1</a> <span class="price">$15</span></p>
      <p><a href="#">Product 2</a> <span class="price">$5</span></p>
      <p><a href="#">Product 3</a> <span class="price">$8</span></p>
      <p><a href="#">Product 4</a> <span class="price">$2</span></p>
      <hr>
      <p>Total <span class="price" style="color:black"><b>$30</b></span></p>
    </div>--%>
  <%--</div>--%>
</div>

    </form>

</body>
</html>

