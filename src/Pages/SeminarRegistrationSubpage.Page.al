Page 80009 "Seminar Registration Subpage"
{
    AutoSplitKey = true;
    Caption = 'Lines';
    PageType = List;
    SourceTable = "Seminar Registration Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = Basic;
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ApplicationArea = Basic;
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ApplicationArea = Basic;
                }
                field(Participated; Rec.Participated)
                {
                    ApplicationArea = Basic;
                }
                field("Register Date"; Rec."Register Date")
                {
                    ApplicationArea = Basic;
                }
                field("Confirmation Date"; Rec."Confirmation Date")
                {
                    ApplicationArea = Basic;
                }
                field("To Invoice"; Rec."To Invoice")
                {
                    ApplicationArea = Basic;
                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = Basic;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = Basic;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = Basic;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }

    actions
    {
    }
}

