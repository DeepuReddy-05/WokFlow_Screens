<%@ Page Title="Accounting Workflow" Language="VB" MasterPageFile="~/pagemodel.master" AutoEventWireup="false" CodeFile="LAKESIDE_ACCOUNTING_WORK_FLOW.aspx.vb" Inherits="LAKESIDE_ACCOUNTING_WORK_FLOW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
  <style>
      
         
            .btn-label1 {
    background-color: #92C7C7;}

          .btn-label2 {
   background-color: #AFDCEC;}
           .btn-label3 {

   background-color: #8ee8d8;}

              .btn-label4 {
   background-color: #5ac3ca;}

                   .btn-label5 {
   background-color: #CCFFFF;}

                     .btn-label6 {
   background-color: #99ccff;}

                     
              .btn-label7 {

   background-color: #20B2AA;}

               .btn-label8 {
   background-color: #7BCCB5;}

                 .btn-label9 {
   background-color: #92C7C7;}

                    .btn-label10 {

   background-color: #20B2AA;}

                    

               .btn-label11 {
   background-color: #AFDCEC;}

                .btn-label12 {
   background-color: #8ee8d8;}
                    .btn-label13 {
   background-color: #CCFFFF;}

                    
             .btn-label14 {
   background-color: #7BCCB5;}

                  .btn-label16 {
   background-color: #99ccff;}
            .btn-label17 {

   background-color: #20B2AA;}

               .btn-label18 {
   background-color: #AFDCEC;}

               
            .btn-label19 {
   background-color: #99ccff;}
                   .btn-label20 {

   background-color: #20B2AA;}


          .btn-label21 {
   background-color: #AFDCEC;}
                .btn-label22 {

   background-color: #20B2AA;}


       
           .btn-label23 {
   background-color: #5F9EA0;}

 .btn-label24 {

   background-color: #8ee8d8;}



 .btn-WOTOBERELEASED{
      background-color: #FFA500;
 }




 .btn-TIMECARD{
      background-color: #FFAB91 ;
 }




 
 .btn-WOQA{
      background-color: #D2B4DE;
 }




 .btn-CreatWO{
      background-color: #A5D6A7;
 }


  .btn-CreatWOREO{
      background-color: #FFE0B2 ;
 }



  .btn-CreatWOLOT{
      background-color: #CCCC66;
 }

  .btn-CreatMPS{
      background-color: #E6B0AA ;
 }

  
  .btn-ChildCompo{
      background-color:#F8BBD0;
 }

    .btn-WOSOSV{
      background-color:#C8E6C9;
 }


       .btn-PURCMATE{
      background-color:#D98880;
 }


             .btn-MATISU{
      background-color:#52BE80;
 }





                         .btn-OSVQA{
      background-color:#999966;
 }




                               .btn-MATCONS{
      background-color:#DCE775;
 }



                                     .btn-WOSPEND{
      background-color:#7FB3D5;
 }

  .btn-WOSREADY{
      background-color:#20B2AA;
 }


  </style>
    <table>
           
          
           
        </table>

    <header>
            <div class="container">
                <h1 class="text-center" style="color:#4682B4;">Lakeside Accounting Workflow</h1>
            </div>
        </header>


    <div class="container" style="margin-bottom: auto; margin-left: auto; margin-right: auto; margin-top: auto;">  <%--Main Container start Tag--%>


         <div class="row" style="padding-top:10px;width: 1200px; "> <%--1st Row Start Tag--%>
             
            <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-CreatWO btn-lg text-warning center-block">
                        <a href="TERMS_CODE.aspx?mid=TERMSCODE" target="_blank">
                        <asp:Label ID="Label1" CssClass="lbfont6" runat="server" Text="Terms Code Setup" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            
                <div class="col-xs-3 text-center">
                    <p class="lead btn btn-CreatWO btn-lg text-warning center-block" >
                        <a href="ACCOUNTS.aspx?mid=ACCOUNTS" target="_blank">
                        <asp:Label ID="Label2" CssClass="lbfont6" runat="server" Text="Chart of Accounts" /></a></p>
                   <%--  <p class="btn center-block" style="margin-left:0px;">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
            
                <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-CreatWO btn-lg text-warning center-block">
                        <a href="GE_PAYMENT_METHOD.aspx?mid=PAYMENT_METHOD" target="_blank">
                        <asp:Label ID="Label3" CssClass="lbfont6" runat="server" Text="Payment Methods" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
               
             <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-CreatWO btn-lg text-warning center-block">
                        <a href="GL_JOURNAL.aspx?mid=GL_JOURNAL" target="_blank">
                        <asp:Label ID="Label4" CssClass="lbfont6" runat="server" Text="Journal" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

                
            </div> <%--1st Row END Tag--%>
        <br />

        <div class="row" style="padding-top:10px;width: 1200px; "> <%--2nd Row Start Tag--%>
             
            <div class="col-xs-3 text-center" style="margin-left:0px;">
                    <p class="text-center btn btn-WOQA btn-lg text-warning center-block">
                        <a href="PENDING_ORDERS_FOR_INVOICING.ASPX?PROJECT_TYPE=Part Order" target="_blank">
                        <asp:Label ID="Label5" CssClass="lbfont6" runat="server" Text="Pending Invoices<br/> For Parts Order" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            
                <div class="col-xs-3 text-center">
                    <p class="lead btn btn-WOQA btn-lg text-warning center-block" >
                        <a href="PENDING_ORDERS_FOR_INVOICING.ASPX?PROJECT_TYPE=Project Order" target="_blank">
                        <asp:Label ID="Label6" CssClass="lbfont6" runat="server" Text=" Pending Project<br/> Order to Invoice " /></a></p>
                    <%-- <p class="btn center-block" style="margin-left:0px;">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
            
                <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-WOQA btn-lg text-warning center-block">
                        <a href="SD_INVOICE.aspx?mid=SD_INVOICE" target="_blank">
                        <asp:Label ID="Label7" CssClass="lbfont6" runat="server" Text="Create Miscellaneous<br/> Invoices" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

               <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-WOQA btn-lg text-warning center-block">
                        <a href="WARRANTY_ORDERS.ASPX?mid=M_WARRANTY_ORDER" target="_blank">
                        <asp:Label ID="Label22" CssClass="lbfont6" runat="server" Text="Warranty<br/>Orders" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
               
           

                
            </div> <%--2nd Row END Tag--%>
        <br />
        
        <div class="row" style="padding-top:10px;width: 1200px; "> <%--3rd Row Start Tag--%>
             
            <div class="col-xs-3 text-center" style="margin-left:0px;">
                    <p class="text-center btn btn-CreatMPS btn-lg text-warning center-block">
                        <a href="PENDING_CASH_RECEIPTS.ASPX" target="_blank">
                        <asp:Label ID="Label8" CssClass="lbfont6" runat="server" Text="Pending Cash Receipts" /></a></p>
                    <%--<p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            
                <div class="col-xs-3 text-center">
                    <p class="lead btn btn-CreatMPS btn-lg text-warning center-block" >
                        <a href="AR_CASH_RECEIPTS.ASPX?mid=AR_CASH_RECEIPTS" target="_blank">
                        <asp:Label ID="Label9" CssClass="lbfont6" runat="server" Text="Create Cash Receipts" /></a></p>
                    <%-- <p class="btn center-block" style="margin-left:0px;">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
            
                <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-CreatMPS btn-lg text-warning center-block">
                        <a href="BANK_DEPOSIT.ASPX?mid=BANK_DEPOSIT" target="_blank">
                        <asp:Label ID="Label10" CssClass="lbfont6" runat="server" Text="Create Bank Deposit" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-CreatMPS btn-lg text-warning center-block">
                        <a href="PO_CREDIT_MEMO.aspx?mid=PO_CREDIT_MEMO" target="_blank">
                        <asp:Label ID="Label17" CssClass="lbfont6" runat="server" Text="Vendor Credit Memo" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
               
           

                
            </div> <%--3rd Row END Tag--%>
        <br />
        
        <div class="row" style="padding-top:10px;width: 1200px; "> <%--4th Row Start Tag--%>
             
            <div class="col-xs-3 text-center" style="margin-left:0px;">
                    <p class="text-center btn btn-WOSOSV btn-lg text-warning center-block">
                        <a href="REP_ACCRUED_PUR.aspx" target="_blank">
                        <asp:Label ID="Label11" CssClass="lbfont6" runat="server" Text="Pending Vendor<br/> Invoice" /></a></p>
                    <%--<p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            
                <div class="col-xs-3 text-center">
                    <p class="lead btn btn-WOSOSV btn-lg text-warning center-block" >
                        <a href="PO_INVOICE.aspx?mid=PO_INVOICE" target="_blank">
                        <asp:Label ID="Label12" CssClass="lbfont6" runat="server" Text="Create Miscellaneous<br/>PO Invoice" /></a></p>
                     <%--<p class="btn center-block" style="margin-left:0px;">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
            
                <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-WOSOSV btn-lg text-warning center-block">
                        <a href="AP_PAYMENT.aspx?mid=AP_PAYMENT" target="_blank">
                        <asp:Label ID="Label13" CssClass="lbfont6" runat="server" Text="Create <br/>Check" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
               
             <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-WOSOSV btn-lg text-warning center-block">
                        <a href="SD_CREDIT_MEMO.aspx?mid=CREDIT_MEMO" target="_blank">
                        <asp:Label ID="Label18" CssClass="lbfont6" runat="server" Text="Customer<br/> Credit Memo" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

                
            </div> <%--4th Row END Tag--%>
        <br />
        
        <div class="row" style="padding-top:10px;width: 1200px; "> <%--5th Row Start Tag--%>
             
            <div class="col-xs-3 text-center" style="margin-left:0px;">
                    <p class="text-center btn btn-label4 btn-lg text-warning center-block">
                        <a href="GL_BANK_RECONCILIATION.aspx?mid=BANK_RECONCILIATION" target="_blank">
                        <asp:Label ID="Label14" CssClass="lbfont6" runat="server" Text="Bank<br/>Reconciliation" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            
                <div class="col-xs-3 text-center">
                    <p class="lead btn btn-label4 btn-lg text-warning center-block" >
                        <a href="REP_TRAIL_BALANCE_BY_DATE.ASPX?mid=TRAIL_BAL_BY_DATE" target="_blank">
                        <asp:Label ID="Label15" CssClass="lbfont6" runat="server" Text="Trial<br/> Balance" /></a></p>
                     <%--<p class="btn center-block" style="margin-left:0px;">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
            
                <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-label4 btn-lg text-warning center-block">
                        <a href="FINANCIAL_REPORT_PROCESSING_MAIN.aspx?mid=FINANCIAL_REPORTS" target="_blank">
                        <asp:Label ID="Label16" CssClass="lbfont6" runat="server" Text="Financial<br/> Reports" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
               
 <%--Added on 6th FEB 2020--%>

             <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-label4 btn-lg text-warning center-block">
                        <a href="" target="_blank">
                        <asp:Label ID="Label23" CssClass="lbfont6" runat="server" Text="Account<br/> Receivable" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

           

                
            </div> <%--5th Row END Tag--%>

        <br />

        <div class="row" style="padding-top:10px;width: 1200px; "> <%--6th Row Start Tag--%>
             
            <div class="col-xs-3 text-center" style="margin-left:0px;">
                    <p class="text-center btn btn-MATCONS btn-lg text-warning center-block">
                        <a href="ACCOUNTING_PERIOD.aspx?mid=ACCOUNTING_PERIOD" target="_blank">
                        <asp:Label ID="Label19" CssClass="lbfont6" runat="server" Text="Accounting Period" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>

            
                <div class="col-xs-3 text-center">
                    <p class="lead btn btn-MATCONS btn-lg text-warning center-block" >
                        <a href="REP_AR_AGING_SUMMARY.ASPX" target="_blank">
                        <asp:Label ID="Label20" CssClass="lbfont6" runat="server" Text="AR Aging" /></a></p>
                     <%--<p class="btn center-block" style="margin-left:0px;">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
            
                <div class="col-xs-3 text-center">
                    <p class="text-center btn btn-MATCONS btn-lg text-warning center-block">
                        <a href="REP_AP_AGING_SUMMARY.aspx" target="_blank">
                        <asp:Label ID="Label21" CssClass="lbfont6" runat="server" Text="AP Aging" /></a></p>
                   <%-- <p class="btn center-block">
                        <span class="glyphicon glyphicon-arrow-down"></span>
                    </p>--%>
                </div>
               
           

                
            </div> <%--6th Row END Tag--%>

        
















        </div> <%--Main Container END Tag--%>




</asp:Content>

