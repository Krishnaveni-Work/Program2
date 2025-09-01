tableextension 50003 "Extended Customer Ledger" extends "Cust. Ledger Entry"
{
    fields
    {
        field(50001; "Name 3"; Text[200])
        {
            Caption = 'Name 3';
            // FieldClass = FlowField;
            // CalcFormula = lookup(Customer."Name 3" where("No." = field("Customer No.")));
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
        myInt: Integer;
}