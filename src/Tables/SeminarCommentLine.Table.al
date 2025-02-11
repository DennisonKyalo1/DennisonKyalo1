Table 70005 "Seminar Comment Lines"
// {
//     Caption = 'Seminar Comment Line';
//     DrillDownPageID = "Seminar Comment List";
//     LookupPageID = "Seminar Comment List";

//     fields
//     {
//         field(1; "Document Type"; Option)
//         {
//             Caption = 'Document Type';
//             OptionCaption = 'Seminar Registration,Posted Seminar Registration';
//             OptionMembers = "Seminar Registration","Posted Seminar Registration";
//         }
//         field(2; "No."; Code[20])
//         {
//             Caption = 'No.';
//         }
//         field(3; "Line No."; Integer)
//         {
//             Caption = 'Line No.';
//         }
//         field(4; Date; Date)
//         {
//             Caption = 'Date';
//         }
//         field(5; "Code"; Code[10])
//         {
//             Caption = 'Code';
//         }
//         field(6; Comment; Text[80])
//         {
//             Caption = 'Comment';
//         }
//         field(7; "Document Line No."; Integer)
//         {
//             Caption = 'Document Line No.';
//         }
//     }

//     keys
//     {
//         key(Key1; "Document Type", "No.", "Document Line No.", "Line No.")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//     }

//     procedure SetUpNewLine()
//     var
//         SeminarCommentLine: Record "Sales Comment Line";
//     begin
//         SeminarCommentLine.SetRange("Document Type", "Document Type");
//         SeminarCommentLine.SetRange("No.", "No.");
//         SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
//         SeminarCommentLine.SetRange(Date, WorkDate);
//         if not SeminarCommentLine.FindFirst then
//             Date := WorkDate;
//     end;

//     procedure CopyComments(FromDocumentType: Integer; ToDocumentType: Integer; FromNumber: Code[20]; ToNumber: Code[20])
//     var
//         SeminarCommentLine: Record "Sales Comment Line";
//         SeminarCommentLine2: Record "Sales Comment Line";
//         IsHandled: Boolean;
//     begin
//         IsHandled := false;
//         OnBeforeCopyComments(SeminarCommentLine, ToDocumentType, IsHandled);
//         if IsHandled then
//             exit;

//         SeminarCommentLine.SetRange("Document Type", FromDocumentType);
//         SeminarCommentLine.SetRange("No.", FromNumber);
//         if SeminarCommentLine.FindSet then
//             repeat
//                 SeminarCommentLine2 := SeminarCommentLine;
//                 SeminarCommentLine2."Document Type" := ToDocumentType;
//                 SeminarCommentLine2."No." := ToNumber;
//                 SeminarCommentLine2.Insert;
//             until SeminarCommentLine.Next = 0;
//     end;

//     procedure DeleteComments(DocType: Option; DocNo: Code[20])
//     begin
//         SetRange("Document Type", DocType);
//         SetRange("No.", DocNo);
//         if not IsEmpty then
//             DeleteAll;
//     end;

//     procedure ShowComments(DocType: Option; DocNo: Code[20]; DocLineNo: Integer)
//     var
//         SeminarCommentSheet: Page "Sales Comment Sheet";
//     begin
//         SetRange("Document Type", DocType);
//         SetRange("No.", DocNo);
//         SetRange("Document Line No.", DocLineNo);
//         Clear(SeminarCommentSheet);
//         SeminarCommentSheet.SetTableview(Rec);
//         SeminarCommentSheet.RunModal;
//     end;

//     [IntegrationEvent(false, false)]
//     local procedure OnBeforeCopyComments(var SeminarCommentLine: Record "Sales Comment Line"; ToDocumentType: Integer; var IsHandled: Boolean)
//     begin
//     end;
// }

{
    Caption = 'Seminar Comment Line';
    DataClassification = CustomerContent;
    LookupPageId = "Seminar Comment List";
    DrillDownPageId = "Seminar Comment List";

    fields
    {
        field(1; "Document Type"; Enum ad_SeminarCommentLineDocumentType)
        {
            Caption = 'Document Type';
            DataClassification = CustomerContent;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
            DataClassification = CustomerContent;
        }
        field(5; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = CustomerContent;
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }
        field(7; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Document Type", "No.", "Document Line No.", "Line No.")
        {
            Clustered = true;
        }
    }
    procedure SetUpNewLine()
    var
        SeminarCommentLine: Record "Seminar Comment Line";
    begin
        SeminarCommentLine.Reset();
        SeminarCommentLine.SetRange("Document Type", "Document Type");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange(Date, WorkDate());

        if SeminarCommentLine.IsEmpty then
            Date := WorkDate();
    end;
}
