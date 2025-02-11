Page 80001 "Seminar Room List"
{
    CardPageID = "Seminar Room Card";
    PageType = List;
    SourceTable = "Seminar Room";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Rec.Code)
                {
                    ApplicationArea = Basic;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = Basic;
                }
                field("Resource No."; Rec."Resource No.")
                {
                    ApplicationArea = Basic;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control8; Links)
            {
            }
            systempart(Control9; MyNotes)
            {
            }
            systempart(Control10; Notes)
            {
            }
        }
    }

    actions
    {
    }
}

