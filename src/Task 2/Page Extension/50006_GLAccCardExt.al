pageextension 50006 "GL Acc Card Page Extended" extends "G/L Account Card"
{
    layout
    {
        addafter(Name)
        {
            field("Name 2"; Rec."Name 2")
            {
                ApplicationArea = All;
                Caption = 'Name 2';
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