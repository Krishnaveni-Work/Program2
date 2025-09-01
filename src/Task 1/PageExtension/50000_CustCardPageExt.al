pageextension 50000 "Extended Customer Card" extends "Customer Card"
{
    layout
    {
        addafter(Name)
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