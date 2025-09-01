pageextension 50001 "Extended Customer List" extends "Customer List"
{
    layout
    {
        addafter(Name)
        {
            field("Name 3"; Rec."Name 3")
            {
                ApplicationArea = all;
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