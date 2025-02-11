Page 80007 "Seminar Comment Sheet"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = "Seminar Comment Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Rec.Date)
                {
                    ApplicationArea = Basic;
                }
                field(Comment;Rec.Comment)
                {
                    ApplicationArea = Basic;
                }
                field("Code";Rec.Code)
                {
                    ApplicationArea = Basic;
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }
}

