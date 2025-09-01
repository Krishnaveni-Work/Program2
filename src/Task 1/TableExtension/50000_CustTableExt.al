tableextension 50000 "Extended Customer" extends Customer
{
    fields
    {
        field(50000; "Name 3"; Text[200])
        {
            Caption = 'Name 3';
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
    // myInt: Integer;
}
