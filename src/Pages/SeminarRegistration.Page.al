Page 80010 "Seminar Registration"
{
    PageType = Card;
    SourceTable = "Seminar Registration Header";

//     layout
//     {
//         area(content)
//         {
//             group(General)
//             {
//                 field("No.";Rec."No.")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Starting Date";Rec."Starting Date")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar No.";Rec."Seminar No.")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Name";Rec."Seminar Name")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Instructor Resource No.";Rec."Instructor Resource No.")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Instructor Name";Rec."Instructor Name")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Posting Date";Rec."Posting Date")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Document Date";Rec."Document Date")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field(Status;Rec.Status)
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field(Duration;Rec.Duration)
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Minimum Participants";Rec."Minimum Participants")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Maximum Participants";Rec."Maximum Participants")
//                 {
//                     ApplicationArea = Basic;
//                 }
//             }
//             part(Control15;"Seminar Registration Subpage")
//             {
//             }
//             group("Seminar Room")
//             {
//                 field("Seminar Room Code";Rec."Seminar Room Code")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Name";Rec."Seminar Room Name")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Address";Rec."Seminar Room Address")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Address 2";Rec."Seminar Room Address 2")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Post Code";Rec."Seminar Room Post Code")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room City";Rec."Seminar Room City")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Phone No.";Rec."Seminar Room Phone No.")
//                 {
//                     ApplicationArea = Basic;
//                 }
//             }
//             group(Invoicing)
//             {
//                 field("Seminar Price";Rec."Seminar Price")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Job No.";Rec."Job No.")
//                 {
//                     ApplicationArea = Basic;
//                 }
//             }
//         }
//     }

//     actions
//     {
//     }
// }

 layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    AssistEdit = true;

                    trigger OnAssistEdit()
                    begin
                        If Rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Seminar No."; Rec."Seminar No.")
                {
                    ApplicationArea = All;
                }
                field("Seminar Name"; Rec."Seminar Name")
                {
                    ApplicationArea = All;
                }
                field("Instructor Resource No."; Rec."Instructor Resource No.")
                {
                    ApplicationArea = All;
                }
                field("Instructor Name"; Rec."Instructor Name")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                }
                field("Minimum Participants"; Rec."Minimum Participants")
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;
                }
           // }
          //  part(SeminarRegistrationLines; )
          //  {
               // SubPageLink = "Document No." = field("No.");
              //  ApplicationArea = All;
            }
            group("Seminar Room")
            {
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = All;
                }
                field("Room Name"; Rec."Room Name")
                {
                    ApplicationArea = All;
                }
                field("Room Address"; Rec."Room Address")
                {
                    ApplicationArea = All;
                }
                field("Room Address 2"; Rec."Room Address 2")
                {
                    ApplicationArea = All;
                }
                field("Room Post Code"; Rec."Room Post Code")
                {
                    ApplicationArea = All;
                }
                field("Room City"; Rec."Room City")
                {
                    ApplicationArea = All;
                }
                field("Room Country/Reg. Code"; Rec."Room Country/Reg. Code")
                {
                    ApplicationArea = All;
                }
                field("Room County"; Rec."Room County")
                {
                    ApplicationArea = All;
                }
            }
            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(FactBoxes)
        {
          //  part(SeminarDetails; ad_SeminarDetailsFactbox)
           // {
            //    ApplicationArea = All;
             //   SubPageLink = "No." = field("Seminar No.");
          //  }
         //   part(CustomerDetails; "Customer Details FactBox")
          //  {
          //      ApplicationArea = All;
          //      Provider = SeminarRegistrationLines;
         //       SubPageLink = "No." = field("Bill-to Customer No.");
           // }
            systempart(RecordLinks; Links)
            {
                ApplicationArea = RecordLinks;
            }
            systempart(Notes; Notes)
            {
                ApplicationArea = Notes;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar Registration")
            {
                action("Co&mments")
                {
                    ApplicationArea = All;
                    Caption = 'Co&mments';
                    Image = Comment;
                    RunObject = page "Seminar Comment Sheet";
                    RunPageLink = "No." = field("No.");
                    RunPageView = where("Document Type" = const("Seminar Registration"));
                }
                action("&Charges")
                {
                    ApplicationArea = All;
                    Caption = '&Charges';
                    Image = Cost;
                    RunObject = page "Seminar Charges Form";
                    RunPageLink = "Document No." = field("No.");
                }
            }
        }
        area(Processing)
        {
            group(Posting)
            {
                Image = Post;
                Caption = 'Posting';

                action("P&ost")
                {
                    Caption = 'P&ost';
                    ApplicationArea = All;
                    Image = PostDocument;
                    Promoted = true;
                    RunObject = codeunit ad_SeminarPostYesNo;
                }
            }
        }
    }
}
