pageextension 50002 "Extended Sales Quotation" extends "Sales Quote"
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