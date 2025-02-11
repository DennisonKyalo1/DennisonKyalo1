Page 80003 "Seminar Setup"
{
    PageType = Card;
    SourceTable = "Seminar Set Up";

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos.";Rec."Seminar Nos.")
                {
                    ApplicationArea = Basic;
                }
                field("Seminar Registration Nos.";Rec."Seminar Registration Nos.")
                {
                    ApplicationArea = Basic;
                }
               // field("Posted Seminar Nos.";Rec."Posted Seminar Nos.")
               field("Posted Seminar Reg. Nos.";Rec."Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = Basic;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.Reset;
        if not Rec.Get then
          Rec.Insert;
    end;
}

