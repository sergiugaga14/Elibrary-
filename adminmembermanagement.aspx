<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ELibrary.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="container-fluid">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                         <div class="row">
                            <div class="col">
                                <center>  
                                    <h3>Member Details</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center> <img src="imgs/generaluser.png" width="100px" /></center>
                              
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                             <div class="col-md-3">
                                 <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                         <asp:TextBox CssClass="form-control" placeholder="ID" ID="TextBox3" runat="server"></asp:TextBox>
                                         <asp:Button ID="Button4" CssClass="btn btn-secondary " runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                   
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox  ReadOnly="true" CssClass="form-control" placeholder="Full Name" ID="TextBox4" runat="server"></asp:TextBox>
                                    
                                </div>
                            </div>
                             <div class="col-md-5">
                                  <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox  ReadOnly="true" CssClass="form-control" placeholder="Stat..." ID="TextBox7" runat="server"></asp:TextBox>
                                        <asp:LinkButton ID="LinkButton" CssClass="btn btn-success mr-1 " runat="server" Text="A" OnClick="LinkButton_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-warning mr-1 " runat="server" Text="P" OnClick="LinkButton1_Click"><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger mr-1 " runat="server" Text="" OnClick="LinkButton2_Click"><i class="fas fa-times-circle"></i></asp:LinkButton>

                                    </div>
                                    
                                    
                                </div>
                            </div>
                           
                             

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                  <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="DOB" ID="TextBox1" runat="server" ReadOnly="True" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Contact No" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Email ID" ID="TextBox8" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                  <label>County</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="County" ID="TextBox9" runat="server" ReadOnly="True" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="City" ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Pincode" ID="TextBox11" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                  <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Address" ID="TextBox5" runat="server" TextMode="Multiline" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                          
                        </div>


                        <div class="row">
                            <div class="col">
                                  <div class="form-group">
                                    <asp:Button ID="Button1" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Delete Permanently User" OnClick="Button1_Click" />
                                </div>
                            </div>
                              
                              

                        </div>
                        


                    </div>
                </div>
                <a href="homepage.aspx"><< Back to home</a>
                <br />
                <br />
            </div>
        </div>
    </div>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>  
                                    <h3>Member List</h3>
                                </center>
                            </div>
                        </div>

                       
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                       

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="dob" HeaderText="Birthday" SortExpression="dob" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="county" HeaderText="County" SortExpression="county" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
