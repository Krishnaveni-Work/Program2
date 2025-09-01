tableextension 50005 "GL Entry Table Extension" extends "G/L Entry"
{
    fields
    {
        field(50004; "Name 2"; Text[150])
        {
            Caption = 'Name 2';
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = lookup("G/L Account"."Name 2" where("No." = field("G/L Account No.")));
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