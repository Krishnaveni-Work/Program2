pageextension 50003 "Extended Sales Order" extends "Sales Order"
{
    layout
    {
        addafter("Sell-to Customer Name")
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
    // myInt: Integer;
}