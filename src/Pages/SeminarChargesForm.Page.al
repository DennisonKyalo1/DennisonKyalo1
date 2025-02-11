Page 80008 "Seminar Charges Form"
{
    AutoSplitKey = true;
    PageType = List;
    SourceTable = "Seminar Charge";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Type;Rec.Type)
                {
                    ApplicationArea = Basic;
                }
                field("Document No.";Rec."Document No.")
                {
                    ApplicationArea = Basic;
                }
                field(Description;Rec.Description)
                {
                    ApplicationArea = Basic;
                }
                field("Bill To Customer No.";Rec."Bill To Customer No.")
                {
                    ApplicationArea = Basic;
                }
                field("To Invoice";Rec."To Invoice")
                {
                    ApplicationArea = Basic;
                }
                field("Unit of Measure Code";Rec."Unit of Measure Code")
                {
                    ApplicationArea = Basic;
                }
                field(Quantity;Rec.Quantity)
                {
                    ApplicationArea = Basic;
                }
                field("Unit Price";Rec."Unit Price")
                {
                    ApplicationArea = Basic;
                }
                field("Total Price";Rec."Total Price")
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

