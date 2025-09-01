pageextension 50004 "Extended Posted Sales Invoice" extends "Posted Sales Invoice"
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
        myInt: Integer;
}