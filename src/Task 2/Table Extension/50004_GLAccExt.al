tableextension 50004 "GL Account Extension" extends "G/L Account"
{
    fields
    {
        field(50004; "Name 2"; Text[150])
        {
            Caption = 'Name 2';
            DataClassification = ToBeClassified;
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