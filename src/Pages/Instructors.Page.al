Page 80002 Instructors
{
    PageType = List;
    SourceTable = Instructor;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code";Rec.Code)
                {
                    ApplicationArea = Basic;
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field("Internal/External";Rec."Internal/External")
                {
                    ApplicationArea = Basic;
                }
                field("Resource No.";Rec."Resource No.")
                {
                    ApplicationArea = Basic;
                }
                field("Contact No.";Rec."Contact No.")
                {
                    ApplicationArea = Basic;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control9;Notes)
            {
            }
            systempart(Control10;MyNotes)
            {
            }
            systempart(Control11;Links)
            {
            }
        }
    }

    actions
    {
    }
}

