Page 80000 "Seminar Room Card"
{
    PageType = Card;
    SourceTable = "Seminar Room";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Code";Rec.Code)
                {
                    ApplicationArea = Basic;
                }
                field(Name;Rec.Name)
                {
                    ApplicationArea = Basic;
                }
                field(Address;Rec.Address)
                {
                    ApplicationArea = Basic;
                }
                field("Address 2";Rec."Address 2")
                {
                    ApplicationArea = Basic;
                }
                field("Seminar City";Rec."Seminar City")
                {
                    ApplicationArea = Basic;
                }
                field("Post Code";Rec."Post Code")
                {
                    ApplicationArea = Basic;
                }
                field("Country/Region code";Rec."Country/Region code")
                {
                    ApplicationArea = Basic;
                }
                field("Internal/extenal";Rec."Internal/extenal")
                {
                    ApplicationArea = Basic;
                }
                field("Maximum Participants";Rec."Maximum Participants")
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
            group(Communication)
            {
                field("Phone No.";Rec."Phone No.")
                {
                    ApplicationArea = Basic;
                }
                field("Fax No.";Rec."Fax No.")
                {
                    ApplicationArea = Basic;
                }
                field("E-Mail";Rec."E-Mail")
                {
                    ApplicationArea = Basic;
                }
                field("Home Page";Rec."Home Page")
                {
                    ApplicationArea = Basic;
                }
            }
        }
        area(factboxes)
        {
            systempart(Control20;Notes)
            {
            }
            systempart(Control21;MyNotes)
            {
            }
            systempart(Control22;Links)
            {
            }
        }
    }

    actions
    {
    }
}

