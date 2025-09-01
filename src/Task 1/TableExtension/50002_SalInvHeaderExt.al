tableextension 50002 "Extended Sales Invoice Header" extends "Sales Invoice Header"
{
    fields
    {
        field(50001; "Name 3"; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Name 3';
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