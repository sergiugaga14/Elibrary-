<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="publishermanagement.aspx.cs" Inherits="ELibrary.publishermanagement" %>
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
    <div class="container">
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
                                    <h3>Publisher Details</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center> <img src="imgs/publisher.png" width="100px" /></center>
                              
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                 <label>Publisher ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                         <asp:TextBox CssClass="form-control" placeholder="ID" ID="TextBox3" runat="server"></asp:TextBox>
                                         <asp:Button ID="Button4" CssClass="btn btn-secondary " runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                   
                                </div>
                            </div>
                             <div class="col-md-8">
                                  <label>Publisher name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Publisher name" ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                  <div class="form-group">
                                    <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                            </div>
                              <div class="col-md-4">
                                  <div class="form-group">
                                    <asp:Button ID="Button2" CssClass="btn btn-primary btn-block btn-lg" runat="server" Text="Update" OnClick="Button2_Click" />
                                </div>
                            </div>
                              <div class="col-md-4">
                                  <div class="form-group">
                                    <asp:Button ID="Button3" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                                    <h3>Publisher List</h3>
                                </center>
                            </div>
                        </div>

                       
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                       

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [publisher_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
