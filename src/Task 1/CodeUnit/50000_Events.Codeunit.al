codeunit 50000 "Customer Name Event Subscriber"
{

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", OnBeforeCopySellToCustomerAddressFieldsFromCustomer, '', false, false)]
    local procedure "Sales Header_OnBeforeCopySellToCustomerAddressFieldsFromCustomer"(var SalesHeader: Record "Sales Header"; Customer: Record Customer; var IsHandled: Boolean)
    begin
        SalesHeader."Name 3" := Customer."Name 3";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Quote to Order", OnBeforeModifySalesOrderHeader, '', false, false)]
    local procedure "Sales-Quote to Order_OnBeforeModifySalesOrderHeader"(var SalesOrderHeader: Record "Sales Header"; SalesQuoteHeader: Record "Sales Header")
    begin
        SalesOrderHeader."Name 3" := SalesQuoteHeader."Name 3";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", OnBeforeCustLedgEntryInsert, '', false, false)]
    local procedure "Gen. Jnl.-Post Line_OnBeforeCustLedgEntryInsert"(var Sender: Codeunit "Gen. Jnl.-Post Line"; var CustLedgerEntry: Record "Cust. Ledger Entry"; var GenJournalLine: Record "Gen. Journal Line"; GLRegister: Record "G/L Register"; var TempDtldCVLedgEntryBuf: Record "Detailed CV Ledg. Entry Buffer"; var NextEntryNo: Integer)
    var
        Customer: Record Customer;
    begin
        if CustLedgerEntry."Customer No." <> '' then begin
            Customer.Reset();
            Customer.SetRange("No.", CustLedgerEntry."Customer No.");
            if Customer.FindFirst() then
                CustLedgerEntry."Name 3" := Customer."Name 3";
        end;
    end;
}