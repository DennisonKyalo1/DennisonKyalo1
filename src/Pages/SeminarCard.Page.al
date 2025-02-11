Page 80004 "Seminar Card"
{
    PageType = Card;
    SourceTable = Seminar;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No.";Rec."No.")
                {
                    ApplicationArea = Basic;
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field("Search Name";Rec."Search Name")
                {
                    ApplicationArea = Basic;
                }
                field("Seminar Duration";Rec."Seminar Duration")
                {
                    ApplicationArea = Basic;
                }
                field("Minimum Participants";Rec."Minimum Participants")
                {
                    ApplicationArea = Basic;
                }
                field("Maximum Participants";Rec."Maximum Participants")
                {
                    ApplicationArea = Basic;
                }
                field(Blocked;Rec.Blocked)
                {
                    ApplicationArea = Basic;
                }
                field("Last Date Modified";Rec."Last Date Modified")
                {
                    ApplicationArea = Basic;
                }
            }
            group(Invoicing)
            {
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
                field("Job No";Rec."Job No.")
                {
                    ApplicationArea = Basic;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control17;Notes)
            {
            }
            systempart(Control18;MyNotes)
            {
            }
            systempart(Control19;Links)
            {
            }
        }
    }

    actions
    {
    }
}

