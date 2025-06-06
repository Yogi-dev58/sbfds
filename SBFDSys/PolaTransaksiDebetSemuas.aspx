﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PolaTransaksiDebetSemuas.aspx.cs" Inherits="SBFDSys.PolaTransaksiDebetSemuas" %>

<%@ Register Src="~/SideBarAdmin.ascx" TagPrefix="uc1" TagName="SideBarAdmin" %> 
<%@ Register Src="~/TopBar.ascx" TagPrefix="uc1" TagName="TopBar" %>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<link href="css/sb-admin-2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="../Content/Images/bprsblogo.png" />
    <title>SB-FDS</title>
</head>
<body id="page-top">
  <form runat="server" class="needs-validation" novalidate>
    <div id="wrapper">
        <uc1:SideBarAdmin runat="server" id="SideBarAdmin" />
        
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <uc1:TopBar runat="server" ID="TopBar" />
                <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <%--<h1 class="h3 mb-2 text-gray-800">Input Ruang Lokasi</h1>--%>
                        <%--<p class="mb-4">Detection</p>--%>
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Nominal Transaksi Debet tidak sesuai pola (Nominal)</h6>
                            </div>
                            <br>
                            <%--<a href="Cabangs.aspx">Cabangs.aspx</a>--%>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-check">
                                            <asp:Panel runat="server" ID="panelTanggalMulai">
                                                <div class="form-group row">
                                                    <label for="TextBoxTanggalMulai" class="col-sm-3 col-form-label">Tanggal</label>
                                                    <div class="col-sm-9 mt-1">
                                                        <asp:TextBox ID="TextBoxTanggalMulai" type="Date" runat="server" class="form-control" placeholder="Tanggal Mulai"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <%--<div class="form-group row">
                                                    <label for="TextBoxTipeTransaksi" class="col-sm-3 col-form-label">Tipe Transaksi</label>
                                                    <div class="col-sm-9 mt-1">
                                                        <asp:TextBox ID="TextBoxTipeTransaksi" type="text" runat="server" class="form-control"></asp:TextBox>
                                                        </div>
                                                </div>--%>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="input-group">
                                            <asp:TextBox ID="TextBoxSearch" runat="server" type="text" class="form-control bg-light border-0 small" placeholder="Tulis Pencarian ..." aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="ButtonSearchTransaksi" runat="server" class="btn btn-primary" type="button" Text="Cari" OnClick="ButtonSearchTransaksi_Click"></asp:Button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br>

                                <%--<label for="" class="col-sm-3 col-form-label">SEMUA DATA</label>

                                <div class="table-responsive">
                                    <asp:ListView runat="server" ID="ListViewData" OnPagePropertiesChanging="ListViewData_PagePropertiesChanging">
                                        <LayoutTemplate>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Nama Customer</th>
                                                        <th>CIF </th>
                                                        <th>Username </th>
                                                        <th>Jenis Transaksi</th>
                                                        <th>Keterangan</th>
                                                        <th>Dari Akun</th>
                                                        <th>Ke Akun</th>
                                                        <th>Tanggal Transaksi</th>



                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr runat="server" id="itemPlaceholder"></tr>
                                                </tbody>
                                            </table>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("customer_name") %></td>
                                                <td><%# Eval("cif_number") %></td>
                                                <td><%# Eval("customer_username") %></td>
                                                <td><%# Eval("transaction_type") %></td>
                                                <td><%# Eval("description") %></td>
                                                <td><%# Eval("from_account_number") %></td>
                                                <td><%# Eval("to_account_number") %></td>
                                                <%--<td><%# Eval("count") %></td>
                                                <td><%# Eval("sum") %></td>
                                                <td><%# Eval("min") %></td>
                                                <td><%# Eval("max") %></td>
                                                <td><%# Eval("avg") %></td>--%>
                                                <%--<td><%# DateTime.Parse(Eval("date").ToString()).ToString("yyyy-MM-dd") %></td>


                                            </tr>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                                <label>Page</label>
                                <asp:DataPager ID="lvDataPager1" runat="server" PagedControlID="ListViewData" PageSize="20">
                                    <Fields>
                                        <asp:NumericPagerField ButtonType="Link" />
                                    </Fields>
                                </asp:DataPager><br />--%>
                                <br />

                                <label for="" class="col-sm-3 col-form-label">POLA NASABAH NOMINAL PER TRANSAKSI</label>

                                <div class="table-responsive">
                                    <asp:ListView runat="server" ID="ListViewCari" OnPagePropertiesChanging="ListViewData_PagePropertiesChanging">
                                        <LayoutTemplate>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Nama Customer</th>
                                                        <th>CIF </th>
                                                        <th>Username </th>
<%--                                                        <th>Jenis Transaksi</th>--%>
                                                        <th>Jenis Transaksi</th>
                                                        <th>Nominal Transaksi</th>
                                                        <th>Min TR</th>
                                                        <th>Max TR</th>
                                                        <th>Avg TR</th>
                                                        <%--<th>Min Daily</th>
                                                        <th>Max Daily</th>
                                                        <th>Avg Daily</th>--%>
                                                        <%--<th>Fungsi</th>--%>


                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr runat="server" id="itemPlaceholder"></tr>
                                                </tbody>
                                            </table>
                                        </LayoutTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td><%# Eval("customer_name") %></td>
                                                <td><%# Eval("cif_number") %></td>
                                                <td><%# Eval("customer_username") %></td>
                                                <%--<td><%# Eval("transaction_type") %></td>--%>
                                                <td>
                                                    <%# 
                                                        (Eval("description").ToString() == "Transfer Ke Rek Pac" ? "Transfer Antar Rekening" : Eval("description").ToString()) 
                                                    %>

                                                </td>
                                                <td><%# Eval("last_transaction_amount") %></td>
                                                <td><%# Eval("min") %></td>
                                                <td><%# Eval("max") %></td>
                                                <td><%# Eval("avg") %></td>
                                                <%--<td><%# Eval("min_daily") %></td>
                                                <td><%# Eval("max_daily") %></td>
                                                <td><%# Eval("avg_daily") %></td>--%>
                                                <%--<td><%# DateTime.Parse(Eval("date").ToString()).ToString("MM/dd/yyyy") %></td>--%>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                                <label>Page</label>
                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListViewCari" PageSize="20">
                                    <Fields>
                                        <asp:NumericPagerField ButtonType="Link" />
                                    </Fields>
                                </asp:DataPager><br />
                                <label for="" class="col-sm-3 col-form-label">POLA NASABAH NOMINAL PER HARI</label>

                                    <div class="table-responsive">
                                        <asp:ListView runat="server" ID="ListViewPerHari" OnPagePropertiesChanging="ListViewData_PagePropertiesChanging">
                                            <LayoutTemplate>
                                                <table class="table table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Nama Customer</th>
                                                            <th>CIF </th>
                                                            <th>Username </th>
<%--                                                            <th>Jenis Transaksi</th>--%>
                                                            <th>Jenis Transaksi</th>
                                                            <th>Total Nominal Per CIF</th>
                                                            <th>Min Daily</th>
                                                            <th>Max Daily</th>
                                                            <th>Avg Daily</th>
                                                            <%--<th>Fungsi</th>--%>


                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr runat="server" id="itemPlaceholder"></tr>
                                                    </tbody>
                                                </table>
                                            </LayoutTemplate>
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("customer_name") %></td>
                                                    <td><%# Eval("cif_number") %></td>
                                                    <td><%# Eval("customer_username") %></td>
                                                    <%--<td><%# Eval("transaction_type") %></td>--%>
                                                    <td>
                                                        <%# 
                                                            (Eval("description").ToString() == "Transfer Ke Rek Pac" ? "Transfer Antar Rekening" : Eval("description").ToString()) 
                                                        %>

                                                    </td>
                                                    <td><%# Eval("total_last_transaction_amount") %></td>
                                                    <td><%# Eval("min_daily") %></td>
                                                    <td><%# Eval("max_daily") %></td>
                                                    <td><%# Eval("avg_daily") %></td>
                                                    <%--<td><%# DateTime.Parse(Eval("date").ToString()).ToString("MM/dd/yyyy") %></td>--%>

                                                </tr>
                                            </ItemTemplate>
                                        </asp:ListView>
                                    </div>
                                    <label>Page</label>
                                    <asp:DataPager ID="DataPager2" runat="server" PagedControlID="ListViewPerHari" PageSize="20">
                                        <Fields>
                                            <asp:NumericPagerField ButtonType="Link" />
                                        </Fields>
                                    </asp:DataPager>

                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                    <!-- Modal Confirmation-->
                    <div class="modal fade" id="ModalConfirmation" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Confirmation</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <asp:Label ID="LabelConfirmation" runat="server" Text="Please Confirm."></asp:Label>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button runat="server" ID="ButtonOKConfirm" class="btn btn-secondary" UseSubmitBehavior="false" type="button" data-dismiss="modal" Text="OK" OnClick="ButtonOKConfirm_Click" />
                                    <button class="btn btn-primary" type="button" data-dismiss="modal">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Error Modal-->
                    <div class="modal fade" id="ErrorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Error Occured!</h5>
                                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">×</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-secondary" type="button" data-dismiss="modal">OK</button>
                                </div>
                            </div>
                        </div>
                    </div>

            </div>
            <!-- End of Main Content -->
            <!-- #include file="Footer.html" -->
        </div>
        <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
  </form>

</body>
</html>
