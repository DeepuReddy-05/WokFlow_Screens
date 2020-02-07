Imports System.Data
Imports System.Drawing
Imports System.IO
Imports System.Web.Hosting
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf
Imports Microsoft.Office.Interop.Excel
Partial Class LAKESIDE_ACCOUNTING_WORK_FLOW
    Inherits System.Web.UI.Page
    Protected adp As New OleDbDataAdapter
    Public cmd As New OleDbCommand
    Public conn As New Dbconn
    Dim s As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        adp.SelectCommand = New OleDbCommand
        adp.SelectCommand.Connection = conn.getconnection()
        Dim ds As New Data.DataSet

        'Pending Invoices<br/> For Parts Order
        adp.SelectCommand.CommandText = "select count(*) from (SELECT ORDER_NO,PROJECT_NO,WARRANTY,MATERIAL,LABOR,ENGG,LEC,AGNT,FREIGHT,OVERAGE_LEC,OVERAGE_AGNT,TOTAL,SALESPRICE,TOTAL_COST,TOTAL_FREIGHT,ORDER_TOTAL,INVOICE_TOTAL,ORDER_STATUS,ORDER_DATE,CUSTOMER_NO,NAME,MARGIN,PROJECT_TYPE,PAID_TOTAL,PENDING_AMT_TO_BILL,CREATE_INVOICE FROM V_OPEN_ORDERS_COST_DETAILS WHERE PROJECT_TYPE=NVL( 'Part Order',PROJECT_TYPE) AND UPPER(ORDER_STATUS)='OPEN')"
        ds.Clear()
        adp.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then

            Label5.Text = "Pending Invoices<br/> For Parts Order<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        End If

        'Pending Project<br/> Order to Invoice
        adp.SelectCommand.CommandText = "select count(*) from (SELECT ORDER_NO,PROJECT_NO,WARRANTY,MATERIAL,LABOR,ENGG,LEC,AGNT,FREIGHT,OVERAGE_LEC,OVERAGE_AGNT,TOTAL,SALESPRICE,TOTAL_COST,TOTAL_FREIGHT,ORDER_TOTAL,INVOICE_TOTAL,ORDER_STATUS,ORDER_DATE,CUSTOMER_NO,NAME,MARGIN,PROJECT_TYPE,PAID_TOTAL,PENDING_AMT_TO_BILL,CREATE_INVOICE FROM V_OPEN_ORDERS_COST_DETAILS WHERE PROJECT_TYPE=NVL( 'Project Order',PROJECT_TYPE) AND UPPER(ORDER_STATUS)='OPEN')"
        ds.Clear()
        adp.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then

            Label6.Text = "Pending Project<br/> Order to Invoice<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        End If

        'Pending Cash Receipts
        adp.SelectCommand.CommandText = "SELECT count(*) FROM V_OPEN_ORDERS_COST_DETAILS"
        ds.Clear()
        adp.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then

            Label8.Text = "Pending Cash Receipts<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        End If

        'Pending Vendor<br/> Invoice
        adp.SelectCommand.CommandText = "select count(*) from(SELECT PO_RECEIPT_DATE,DOC_TYPE,'<a href='''||SF_GET_PAGE_URL(DOC_TYPE,DOC_NO,'') || ''' target=''_blank''>' || DOC_NO || '</a>' AS DOC_NO,DOC_LINE_NO,VENDOR_NO,NAME,ITEM_NO,DESCRIPTION,PO_NO,PO_LINE_NO,SUM(QTY) AS QTY,UOM, SUM(AMOUNT) AS AMOUNT,CREATE_PO_INVOICE FROM VL_ACCRUED_PUR_BALANCE WHERE DOC_DATE<=sysdate GROUP BY PO_RECEIPT_DATE,DOC_TYPE, DOC_NO,DOC_LINE_NO,VENDOR_NO,NAME,ITEM_NO,DESCRIPTION,PO_NO,PO_LINE_NO,UOM,create_po_invoice HAVING SUM(AMOUNT)<>0 ORDER BY PO_RECEIPT_DATE DESC)"
        ds.Clear()
        adp.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then

            Label11.Text = "Pending Vendor<br/> Invoice<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        End If

        'Warranty<br/>Orders
        adp.SelectCommand.CommandText = "select count(*) from(select GROUP_LABEL,ORDER_NO, PROJECT_NO, LINE_NO, EQUIPMENT_NO, NAME, ORIGINAL_ORDER_NO, ITEM_NO, DESCRIPTION, WARRANTY, MATERIAL, LABOR, ENGG, LEC, AGNT, FREIGHT, OVERAGE_LEC, OVERAGE_AGNT, TOTAL, SALESPRICE, TOTAL_COST, TOTAL_FREIGHT, LINE_TOTAL_AMOUNT,ORDER_TOTAL, INVOICE_TOTAL, ORDER_STATUS ,PROJECT_TYPE from V_WARRANTY_ORDERS_COST_DETAILS WHERE WARRANTY ='Y')"
        ds.Clear()
        adp.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then

            Label22.Text = "Warranty<br/>Orders<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        End If

        'AR Aging

        ' adp.SelectCommand.CommandText = "select count(*) from (SELECT CUSTOMER_NO,NAME,CREDIT_LIMIT,MAX_CREDIT_DAYS,SUM((CASE WHEN (DOC_DUE_DATE - TRUNC(sysdate)) >= 0 THEN DOC_AMOUNT ELSE 0 END)) AS CURRENT_,SUM((CASE WHEN ((TRUNC(sysdate)  - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) > 0   AND (TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) <= 30 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_30,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) > 30  AND (TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) <= 60 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_60,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE)))> 60   AND (TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) <= 90 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_90,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) > 90  AND (TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) <= 120 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_120,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DOC_DUE_DATE,TRUNC(DOC_DATE))) > 120 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_120PLUS,SUM(DOC_AMOUNT) AS TOTAL FROM V_AR_AGING WHERE DOC_DATE<=sysdate GROUP BY CUSTOMER_NO,NAME,CREDIT_LIMIT,MAX_CREDIT_DAYS)"
        '   ds.Clear()
        '  adp.Fill(ds)
        '   If (ds.Tables(0).Rows.Count > 0) Then

        '      Label20.Text = "AR Aging<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        '   End If



        'AP Aging
        '  adp.SelectCommand.CommandText = "select count(*) from (SELECT VENDOR_NO,NAME,SUM((CASE WHEN (DUE_DATE - TRUNC(sysdate)) >= 0 THEN DOC_AMOUNT ELSE 0 END)) AS CURRENT_,SUM((CASE WHEN ((TRUNC(sysdate)  - NVL(DUE_DATE,TRUNC(DOC_DATE))) > 0   AND (TRUNC(sysdate) - NVL(DUE_DATE,TRUNC(DOC_DATE))) <= 30 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_30,SUM((CASE WHEN ((TRUNC(sysdate)- NVL(DUE_DATE,TRUNC(DOC_DATE))) > 30  AND (TRUNC(sysdate)- NVL(DUE_DATE,TRUNC(DOC_DATE))) <= 60 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_60,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DUE_DATE,TRUNC(DOC_DATE)))> 60   AND (TRUNC(sysdate) - NVL(DUE_DATE,TRUNC(DOC_DATE))) <= 90 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_90,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DUE_DATE,TRUNC(DOC_DATE))) > 90  AND (TRUNC(sysdate) - NVL(DUE_DATE,TRUNC(DOC_DATE))) <= 120 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_120,SUM((CASE WHEN ((TRUNC(sysdate) - NVL(DUE_DATE,TRUNC(DOC_DATE))) > 120 )  THEN DOC_AMOUNT ELSE 0 END)) AS DAYS_120PLUS,SUM(DOC_AMOUNT) AS TOTAL FROM V_AP_AGING WHERE DOC_DATE<=TRUNC(sysdate) /*AND NVL(PAYMENT_METHOD,'CHECK') in (select PAYMENT_METHOD from GE_PAYMENT_METHOD where PAYMENT_METHOD_TYPES='CHECK')*/ AND NVL(PAYMENT_METHOD,'CHECK') IN(SELECT PAYMENT_METHOD FROM GE_PAYMENT_METHOD WHERE PAYMENT_METHOD_TYPES IN (SELECT DISTINCT OPTION_VALUE FROM SYS_DATAELEMENT_ALLOWED_VALUES WHERE DATAELEMENT_ID='PAYMENT_METHOD_TYPES' AND option_value <> 'CREDIT CARD')) GROUP BY VENDOR_NO,NAME)"
        '   ds.Clear()
        '  adp.Fill(ds)
        '   If (ds.Tables(0).Rows.Count > 0) Then

        '      Label21.Text = "AP Aging<strong><font color ='#0000FF' size='3' face='Arial'>(" & ds.Tables(0).Rows(0)(0) & ")</font></strong>"
        '    End If

    End Sub

End Class
