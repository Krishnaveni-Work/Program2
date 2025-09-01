pageextension 50007 "GL Ledger List Page Extended" extends "General Ledger Entries"
{
    layout
    {
        addafter("Document Type")
        {
            field("Name 2"; Rec."Name 2")
            {
                Caption = 'Name 2';
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    // var
    //     myInt: Integer;
}