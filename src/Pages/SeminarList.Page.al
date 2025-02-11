Page 80005 "Seminar List"
{
    CardPageID = "Seminar Card";
    PageType = List;
    SourceTable = Seminar;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = Basic;
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field("Seminar Duration";Rec."Seminar Duration")
                {
                    ApplicationArea = Basic;
                }
                field("Seminar Price";Rec."Seminar Price")
                {
                    ApplicationArea = Basic;
                }
                field("Gen. Prod. Posting Group";Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = Basic;
                }
                field("VAT Prod. Posting Group";Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = Basic;
                }
                field("Job No.";Rec."Job No.")
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

