codeunit 50001 "GL Account Name Event"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", OnAfterInitGLEntry, '', false, false)]
    local procedure "Gen. Jnl.-Post Line_OnAfterInitGLEntry"(var Sender: Codeunit "Gen. Jnl.-Post Line"; var GLEntry: Record "G/L Entry"; GenJournalLine: Record "Gen. Journal Line"; Amount: Decimal; AddCurrAmount: Decimal; UseAddCurrAmount: Boolean; var CurrencyFactor: Decimal; var GLRegister: Record "G/L Register")
    var
        GLACC: Record "G/L Account";
    begin
        if GLEntry."G/L Account No." <> '' then begin
            GLACC.Reset();
            GLACC.SetRange("No.", GLEntry."G/L Account No.");
            if GLACC.FindFirst() then
                GLEntry."Name 2" := GLACC."Name 2";
        end;
    end;
}
