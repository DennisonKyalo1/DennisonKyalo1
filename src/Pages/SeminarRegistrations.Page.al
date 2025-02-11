Page 80011 "Seminar Registrations"
{
    CardPageID = "Seminar Registration";
    Editable = false;
    PageType = List;
    SourceTable = "Seminar Registration Header";

//     layout
//     {
//         area(content)
//         {
//             repeater(Group)
//             {
//                 field(No;Rec.No)
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
//                 field(Status;Rec.Status)
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field(Duration;Rec.Duration)
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Maximum Participants";Rec."Maximum Participants")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Code";Rec."Seminar Room Code")
//                 {
//                     ApplicationArea = Basic;
//                 }
//                 field("Seminar Room Name";Rec."Seminar Room Name")
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
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
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
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;
                }
                field("Room Resource No."; Rec."Room Resource No.")
                {
                    ApplicationArea = All;
                }
            }
            //part(SeminarDetails; ad_SeminarDetailsFactbox)
          //  {
           //     ApplicationArea = All;
           //     SubPageLink = "No." = field("Seminar No.");
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
