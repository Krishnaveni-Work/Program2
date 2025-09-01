pageextension 50005 "Extended Customer Ledger" extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Customer Name")
        {
            field("Name 3"; Rec."Name 3")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}