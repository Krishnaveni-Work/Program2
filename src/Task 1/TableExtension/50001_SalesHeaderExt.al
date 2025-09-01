tableextension 50001 "Extended Sales Header" extends "Sales Header"
{
    fields
    {
        field(50001; "Name 3"; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name 3';
        }

        modify("Sell-to Customer No.")
        {
            trigger OnAfterValidate()
            var
                Customer: Record Customer;
            begin
                if "Sell-to Customer No." <> '' then begin
                    Customer.Reset();
                    Customer.SetRange("No.", "Sell-to Customer No.");
                    if Customer.FindFirst() then
                        "Name 3" := Customer."Name 3";
                end;
            end;
        }

    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
    // myInt: Integer;
}