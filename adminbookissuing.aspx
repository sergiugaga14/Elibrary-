<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibrary.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
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
                                    <h3>Book Issuing</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center> <img src="imgs/books.png" width="100px" /></center>
                              
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                  <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member ID" ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                         <asp:TextBox CssClass="form-control" placeholder="ID" ID="TextBox3" runat="server"></asp:TextBox>
                                         <asp:Button ID="Button4" CssClass="btn btn-secondary " runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                   
                                </div>
                            </div>
                             

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                  <label>Member name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Member name" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                  <label>Book name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Book name" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                  <label>Start date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Publisher name" ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                  <label>End date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" placeholder="Publisher name" ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                  <div class="form-group">
                                    <asp:Button ID="Button1" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Issue" OnClick="Button1_Click" />
                                </div>
                            </div>
                              <div class="col-md-6">
                                  <div class="form-group">
                                    <asp:Button ID="Button2" CssClass="btn btn-primary btn-block btn-lg" runat="server" Text="Return" OnClick="Button2_Click" />
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
                                    <h3>Issued Book List</h3>
                                </center>
                            </div>
                        </div>

                       
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                       

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="Member ID" />
                                        <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="Member name" />
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="Book ID" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="Book Name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="issue_state" SortExpression="Issue Date" />
                                        <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="Due Date" />
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
