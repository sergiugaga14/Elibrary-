<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="ELibrary.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>  <img src="imgs/generaluser.png" width="100px"/></center>
                              
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>  
                                    <h3>User Registration</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                 <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Name" ID="TextBox3" runat="server"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                  <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="" ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                 <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Contact No" ID="TextBox5" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                  <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Email Address" ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                 <label>County</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                          <asp:ListItem Text="Select" Value="select" />
                                          <asp:ListItem Text="Alba" Value="Alba" />
                                          <asp:ListItem Text="Arad" Value="Arad" />
                                          <asp:ListItem Text="Arges" Value="Arges" />
                                          <asp:ListItem Text="Bacau" Value="Bacau" />
                                          <asp:ListItem Text="Bihor" Value="Bihor" />
                                          <asp:ListItem Text="Bistrita-Nasaud" Value="Bistrita-Nasaud" />
                                          <asp:ListItem Text="Botosani" Value="Botosani" />
                                          <asp:ListItem Text="Brasov" Value="Brasov" />
                                          <asp:ListItem Text="Braila" Value="Braila" />
                                          <asp:ListItem Text="Bucuresti" Value="Bucuresti" />
                                          <asp:ListItem Text="Buzau" Value="Buzau" />
                                          <asp:ListItem Text="Constanta" Value="Constanta" />
                                          <asp:ListItem Text="Caras-Severin" Value="Caras-Severin" />
                                          <asp:ListItem Text="Calarasi" Value="Calarasi" />
                                          <asp:ListItem Text="Cluj" Value="Cluj" />
                                          <asp:ListItem Text="Covasna" Value="Covasna" />
                                          <asp:ListItem Text="Dambovita" Value="Dambovita" />
                                          <asp:ListItem Text="Dolj" Value="Dolj" />
                                          <asp:ListItem Text="Galati" Value="Galati" />
                                          <asp:ListItem Text="Giurgiu" Value="Giurgiu" />
                                          <asp:ListItem Text="Gorj" Value="Gorj" />
                                          <asp:ListItem Text="Harghita" Value="Harghita" />
                                          <asp:ListItem Text="Hunedoara" Value="Hunedoara" />
                                          <asp:ListItem Text="Ialomita" Value="Ialomita" />
                                          <asp:ListItem Text="Iasi" Value="Iasi" />
                                          <asp:ListItem Text="Ilfov" Value="Ilfov" />
                                          <asp:ListItem Text="Maramures" Value="Maramures" />
                                          <asp:ListItem Text="Mehedinti" Value="Mehedinti" />
                                          <asp:ListItem Text="Mures" Value="Mures" />
                                          <asp:ListItem Text="Neamt" Value="Neamt" />
                                          <asp:ListItem Text="Olt" Value="Olt" />
                                          <asp:ListItem Text="Prahova" Value="Prahova" />
                                          <asp:ListItem Text="Satu Mare" Value="Satu Mare" />
                                          <asp:ListItem Text="Salaj" Value="Salaj" />
                                          <asp:ListItem Text="Sibiu" Value="Sibiu" />
                                          <asp:ListItem Text="Suceava" Value="Suceava" />
                                          <asp:ListItem Text="Teleorman" Value="Teleorman" />
                                          <asp:ListItem Text="Timis" Value="Timis" />
                                          <asp:ListItem Text="Tulcea" Value="Tulcea" />
                                          <asp:ListItem Text="Vaslui" Value="Vaslui" />
                                          <asp:ListItem Text="Valcea" Value="Valcea" />
                                          <asp:ListItem Text="Vrancea" Value="Vrancea" />
                                          
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-md-4">
                                  <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="City" ID="TextBox8" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                  <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Pincode" ID="TextBox9" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                 <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Full Address" ID="TextBox7" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge badge-pill badge-info">Login Credentials</span>
                                </center>
                                
                            </div>
                        </div>
                        

                         <div class="row">
                            <div class="col-md-6">
                                 <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="User ID" ID="TextBox1" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                  <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                  <div class="form-group">
                                    <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click" />
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
</asp:Content>
