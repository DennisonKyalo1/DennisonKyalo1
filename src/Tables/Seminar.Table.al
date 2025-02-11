Table 70003 Seminar
{

    fields
    //     {
    //         field(1; "No."; Code[20])
    //         {
    //             DataClassification = ToBeClassified;

    //             trigger OnValidate()
    //             begin
    //                 if "No." <> xRec."No." then begin
    //                     SeminarSetup.Get;
    //                     NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
    //                     "No. Series" := '';
    //                 end;
    //             end;
    //         }
    //         field(2; Name; Text[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(3; "Seminar Duration"; Decimal)
    //         {
    //             DataClassification = ToBeClassified;

    //             trigger OnValidate()
    //             begin
    //                 if ("Search Name" = UpperCase(xRec.Name)) or
    //                   ("Search Name" = '') then begin
    //                     "Search Name" := Name;
    //                 end;
    //             end;
    //         }
    //         field(4; "Minimum Participants"; Integer)
    //         {
    //             DataClassification = ToBeClassified;

    //             trigger OnValidate()
    //             begin
    //                 if ("Minimum Participants" <> 0) and not ("Maximum Participants" > "Minimum Participants") then
    //                     Error('This is not applicable');
    //             end;
    //         }
    //         field(5; "Maximum Participants"; Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(6; "Search Name"; Code[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(7; Blocked; Boolean)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(8; "Last Date Modified"; Date)
    //         {
    //             DataClassification = ToBeClassified;
    //             Description = 'Cannot be edited.';
    //             Editable = false;
    //         }
    //         field(9; Comment; Boolean)
    //         {
    //             DataClassification = ToBeClassified;
    //             // Description = 'FlowField; CalcFormula \'
    //             //             "'r lines exist in \'"
    //             ;
    //         }
    //         field(10; "Job No"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = Job;

    //             trigger OnValidate()
    //             begin
    //                 job.Get("Job No");
    //                 job.TestField(Blocked, job.Blocked::" ");
    //             end;
    //         }
    //         field(11; "Seminar Price"; Decimal)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(12; "Gen. Prod. Posting Group"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Gen. Product Posting Group";

    //             trigger OnValidate()
    //             begin
    //                 if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then begin
    //                     if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp, "Gen. Prod. Posting Group") then begin
    //                         Validate("VAT Prod. Posting Group", GenProdPostingGrp."Def. VAT Prod. Posting Group");
    //                     end;
    //                 end;
    //             end;
    //         }
    //         field(13; "VAT Prod. Posting Group"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "VAT Product Posting Group";
    //         }
    //         field(14; "No. Series"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "No. Series";
    //         }
    //         field(15; "Created By"; Code[50])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(16; "Last Time Modified"; Time)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //     }

    //     keys
    //     {
    //         key(Key1; "No.", "Search Name")
    //         {
    //             Clustered = true;
    //         }
    //     }

    //     fieldgroups
    //     {
    //     }

    //     trigger OnInsert()
    //     begin
    //         if "No." = '' then begin
    //             SeminarSetup.Get;
    //             SeminarSetup.TestField("Seminar Nos.");
    //             NoSeriesMgt.InitSeries(SeminarSetup."Seminar Nos.", xRec."No. Series", 0D, "No.", "No. Series");
    //         end;

    //         "Created By" := UserId;
    //         "Last Time Modified" := Time;
    //         "Last Date Modified" := Today;

    //     end;

    //     trigger OnModify()
    //     begin
    //         "Last Date Modified" := Today;
    //     end;

    //     trigger OnRename()
    //     begin
    //         "Last Date Modified" := Today;
    //     end;

    //     var
    //         SeminarSetup: Record "Seminar Set Up";
    //         NoSeriesMgt: Codeunit NoSeriesManagement;
    //         job: Record Job;
    //         GenProdPostingGrp: Record "Gen. Product Posting Group";
    //         Seminar: Record Seminar;

    //     local procedure AssistEdit(AssistEdit: Boolean)
    //     begin
    //         with Seminar do begin
    //             Seminar := Rec;
    //             SeminarSetup.Get;
    //             SeminarSetup.TestField("Seminar Nos.");
    //             if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.", xRec."No. Series", "No. Series") then begin
    //                 SeminarSetup.Get;
    //                 SeminarSetup.TestField("Seminar Nos.");
    //                 NoSeriesMgt.SetSeries("No.");
    //                 Rec := Seminar;
    //                 ////////// why?
    //                 // EXIT(TRUE);
    //             end;
    //         end;
    //     end;

    //     local procedure MinMaxParticipantsCheck()
    //     begin
    //     end;
    // }

    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "No." = xRec."No." then
                    exit;

                SeminarSetup.Get();
                NoSeriesMgt.TestManual(SeminarSetup."Seminar Nos.");
                "No. Series" := '';
            end;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 1;
        }
        field(4; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
            DataClassification = CustomerContent;
        }
        field(5; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = CustomerContent;
        }
        field(6; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if ("Search Name" = UpperCase(xRec.Name))
                    or ("Search Name" = '') then begin
                    "Search Name" := Name;
                end;
            end;
        }
        field(7; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = CustomerContent;
        }
        //  last modified field was omitted because
        //  https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-table-system-fields#audit
        field(9; Comment; Boolean)
        {
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
            // CalcFormula = exist("Comment Line" where("Table Name" = const(Seminar),"No." = field("No.")));
            //CalcFormula = exist("Comment Line" where ()))()
            CalcFormula = exist("Comment Line" where("No." = field("No.")));
        }
        field(10; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            DataClassification = CustomerContent;
            AutoFormatType = 1;
        }
        field(11; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Product Posting Group";

            trigger OnValidate()
            begin
                if xRec."Gen. Prod. Posting Group" = "Gen. Prod. Posting Group" then
                    exit;
                if GenProdPostingGroup.ValidateVatProdPostingGroup(GenProdPostingGroup, "VAT Prod. Posting Group") then
                    Validate("VAT Prod. Posting Group", GenProdPostingGroup."Def. VAT Prod. Posting Group");
            end;
        }
        field(12; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "VAT Product Posting Group";
        }
        field(13; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(14; "Job No."; Code[20])
        {
            TableRelation = Job;
        }
        field(15; "Last Date Modified"; Date)
        {
        
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Search; "Search Name") { }
    }

    var
        SeminarSetup: Record "Seminar Set Up";
        CommentLine: Record "Comment Line";
        GenProdPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No." <> '' then
            exit;

        SeminarSetup.Get();
        SeminarSetup.TestField("Seminar Nos.");
        NoSeriesMgt.InitSeries(
            SeminarSetup."Seminar Nos.",
            xRec."No. Series", 0D, "No.", "No. Series");
    end;

    trigger OnDelete()
    begin
        CommentLine.Reset();
        // CommentLine.SetRange("Table Name", CommentLine."Table Name"::Seminar);
        //CommentLine.SetRange("Table Name", CommentLine."Table Name"::Seminar);
        CommentLine.SetRange("No.", "No.");
        CommentLine.DeleteAll();
    end;

    procedure AssistEdit(OldSeminar: Record Seminar): Boolean
    var
        Seminar: Record Seminar;
    begin
        Seminar := Rec;
        SeminarSetup.Get();
        SeminarSetup.TESTFIELD("Seminar Nos.");
        if NoSeriesMgt.SelectSeries(SeminarSetup."Seminar Nos.",
            xRec."No. Series", "No. Series") then begin
            NoSeriesMgt.SetSeries("No.");
            Rec := Seminar;
            exit(true);
        end;
    end;
}