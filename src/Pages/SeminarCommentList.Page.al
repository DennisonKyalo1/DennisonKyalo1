Page 80006 "Seminar Comment List"
{
    Editable = false;
    LinksAllowed = false;
    PageType = List;
    SourceTable = "Seminar Comment Line";

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
                field("Code";Rec.Code)
                {
                    ApplicationArea = Basic;
                    Visible = false;
                }
                field(Date;Rec.Date)
                {
                    ApplicationArea = Basic;
                }
                field(Comment;Rec.Comment)
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

