Table 70006 "Seminar Registration Header"
{

    fields
//     {
//         field(1;No;Code[20])
//         {
//             DataClassification = ToBeClassified;

//             trigger OnValidate()
//             begin
//                 if No <> xRec.No then begin
//                   SeminarSetup.Get;
//                  NoSeriesMgt.TestManual(SeminarSetup."Seminar Registration Nos.");
//                   "No. Series" := '';

//                   end;
//             end;
//         }
//         field(2;"Starting Date";Date)
//         {
//             DataClassification = ToBeClassified;

//             trigger OnValidate()
//             begin
//                 TestField(Status,Status::Planning);
//             end;
//         }
//         field(3;"Seminar No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Seminar;

//             trigger OnValidate()
//             begin
//                 //Seminar.GET;
//                 //"Seminar Name":=Seminar.Name;
//                 Seminar.Reset;
//                 Seminar.SetRange("No.",No);
//                 if Seminar.FindFirst then begin
//                   "Seminar Name":=Seminar.Name;
//                   end;
//             end;
//         }
//         field(4;"Seminar Name";Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(5;"Instructor Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Instructor;

//             trigger OnValidate()
//             begin
//                 Instructor.Get("Instructor Code");
//                  "Instructor Name":=Instructor.Name;
//             end;
//         }
//         field(6;"Instructor Name";Text[100])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(7;Status;Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Planning,Registration,Closed,Canceled';
//             OptionMembers = Planning,Registration,Closed,Canceled;
//         }
//         field(8;Duration;Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(9;"Maximum Participants";Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(10;"Minimum Participants";Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(11;"Seminar Room Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Seminar Room";

//             trigger OnValidate()
//             begin
//                  if "Seminar Room Code" = '' then begin
//                   "Seminar Room Name" := '';
//                   "Seminar Room Address":='';
//                  "Seminar Room Address 2":='';
//                   "Seminar Room Post Code":='';
//                   "Seminar Room City":='';
//                   "Seminar Room Phone No.":='';
//                    end else begin
//                     SeminarRoom.Get("Seminar Room Code");
//                      "Seminar Room Name":=SeminarRoom.Name;
//                      "Seminar Room Address":=SeminarRoom.Address;
//                     "Seminar Room Address 2":=SeminarRoom."Address 2";
//                      "Seminar Room Post Code":=SeminarRoom."Post Code";
//                     "Seminar Room City":=SeminarRoom."Seminar City";
//                      "Seminar Room Phone No.":=SeminarRoom."Phone No.";


//                  if (CurrFieldNo <> 0) then begin
//                   if (SeminarRoom."Maximum Participants" <> 0) and
//                     (SeminarRoom."Maximum Participants" < "Maximum Participants") then begin
//                    if Confirm('Are you sure you want change number of participants',true,"Maximum Participants",SeminarRoom."Maximum Participants",FieldCaption("Maximum Participants"),"Maximum Participants",SeminarRoom."Maximum Participants") then
//                      "Maximum Participants":=SeminarRoom."Maximum Participants";
//                    end;
//                     end;
//                  end;
//             end;
//         }
//         field(12;"Seminar Room Name";Text[80])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(13;"Seminar Room Address";Text[80])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(14;"Seminar Room Address 2";Text[80])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(15;"Seminar Room Post Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Post Code";
//         }
//         field(16;"Seminar Room City";Text[30])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(17;"Seminar Room Phone No.";Text[50])
//         {
//             DataClassification = ToBeClassified;
//             ExtendedDatatype = PhoneNo;
//         }
//         field(18;"Seminar Price";Decimal)
//         {
//             DataClassification = ToBeClassified;

//             trigger OnLookup()
//             begin
//                  if ("Seminar Price" <> xRec."Seminar Price") and (Status<>Status::Canceled) then begin
//                   SeminarRegLine.Reset;
//                   SeminarRegLine.SetRange("Document No.",No);
//                   SeminarRegLine.SetRange(Registered,false);
//                   if SeminarRegLine.FindSet(false,false) then
//                     if Confirm('Are you sure you want to change seminar price?',false, FieldCaption("Seminar Price"),SeminarRegLine.TableCaption)  then begin
//                      // REPEAT
//                        SeminarRegLine.Validate("Seminar Price","Seminar Price");

//                         SeminarRegLine.Modify(true);
//                         //UNTIL SeminarRegLine.NEXT:=0;
//                         Modify;
//                         end;
//                   end;
//             end;
//         }
//         field(19;"Gen. Pro. Posting Group";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Gen. Product Posting Group";
//         }
//         field(20;"VAT Prod Posting Group";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "VAT Product Posting Group";
//         }
//         field(21;Comment;Boolean)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(22;"Posting Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(23;"Document Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(24;"Job No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Job;

//             trigger OnValidate()
//             begin
//                  if "Job No."<>"Job No." then begin
//                   SeminarCharge.Reset;
//                   SeminarCharge.SetRange("Job No.",xRec."Job No.");
//                   if SeminarCharge.FindSet(true,true) then begin
//                  if Confirm('Are you sure you want to change Job No?',true,FieldCaption("Job No."),SeminarCharge.TableCaption) then begin
//                   SeminarCharge.ModifyAll("Job No.","Job No.");
//                   Modify
//                   end else begin
//                     "Job No.":=xRec."Job No.";
//                   end;
//                     end;
//                   end;
//             end;
//         }
//         field(25;"Reason Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Reason Code";
//         }
//         field(26;"No. Series";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";
//         }
//         field(27;"Posting No. Series";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";

//             trigger OnLookup()
//             begin
//                 with SeminarRegHeader do begin
//                   SeminarRegHeader := Rec;
//                   SeminarSetup.Get;
//                   SeminarSetup.TestField("Seminar Registration Nos.");
//                   SeminarSetup.TestField("Posted Seminar Nos.");
//                   if NoSeriesMgt.LookupSeries(SeminarSetup."Posted Seminar Nos.","Posting No. Series") then begin
//                     Validate("Posting No. Series");
//                     end;
//                     Rec := SeminarRegHeader;


//                   end;
//             end;

//             trigger OnValidate()
//             begin
//                 if "Posting No. Series"<>'' then begin
//                   SeminarSetup.Get;
//                   SeminarSetup.TestField("Seminar Registration Nos.");
//                   SeminarSetup.TestField("Posted Seminar Nos.");
//                   NoSeriesMgt.TestSeries(SeminarSetup."Posted Seminar Nos.","Posting No. Series");

//                   end;
//                   TestField("Posting No.",'');
//             end;
//         }
//         field(28;"Posting No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(Key1;No)
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//     }

//     trigger OnDelete()
//     begin
//         TestField(Status,Status::Canceled);
//          SeminarRegLine.Reset;
//          SeminarRegLine.SetRange("Document No.",No);
//          SeminarRegLine.SetRange(Registered,true);
//          if SeminarRegLine.Find('-') then
//           Error('You cannot delete a canceled document', SeminarRegLine.TableCaption,SeminarRegLine.FieldCaption(Registered),true);
//          SeminarRegLine.SetRange(Registered);
//          SeminarRegLine.DeleteAll(true);

//          SeminarCharge.Reset;
//          SeminarCharge.SetRange("Seminar Registration No.",No);
//          if not SeminarCharge.IsEmpty then
//           Error('You cannot delete a canceled document',SeminarCharge.TableCaption);
//     end;

//     trigger OnInsert()
//     begin
//          if "Posting Date" = 0D then
//           "Posting Date":=WorkDate;
//          "Document Date":=WorkDate;
//          SeminarSetup.Get;
//          NoSeriesMgt.SetDefaultSeries("Posting No. Series",SeminarSetup."Posted Seminar Nos.");

//          if No = '' then begin
//           SeminarSetup.Get;
//           SeminarSetup.TestField("Seminar Registration Nos.");
//           NoSeriesMgt.InitSeries(SeminarSetup."Seminar Registration Nos.",xRec."No. Series",0D,No,"No. Series");
//           end;

//          //InitRecord;
//     end;

//     trigger OnRename()
//     begin
//         Error('This seminar registration header cannot be renamed %1' );
//     end;

//     var
//         SeminarSetup: Record "Seminar Set Up";
//         NoSeriesMgt: Codeunit NoSeriesManagement;
//         SeminarRegLine: Record "Seminar Registration Line";
//         Seminar: Record Seminar;
//         Instructor: Record Instructor;
//         SeminarRoom: Record "Seminar Room";
//         SeminarCharge: Record "Seminar Charge";
//         SeminarRegHeader: Record "Seminar Registration Header";
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
                SeminarSetup.TestField("Seminar Registration Nos.");
               // SeminarSetup.TestField()
                NoSeriesMgt.TestManual(SeminarSetup."Seminar Registration Nos.");
                "No. Series" := '';
            end;
        }
        field(2; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "Starting Date" <> xRec."Starting Date" then
                    TestField(Status, Status::Planning);
            end;
        }
        field(3; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = CustomerContent;
            //TableRelation = ad_Seminar where(Blocked = const(false));
            TableRelation = Seminar where (Blocked = const(false));

            trigger OnValidate()
            begin
                IF "Seminar No." = xRec."Seminar No." THEN
                    exit;

                Seminar.GET("Seminar No.");
                Seminar.TESTFIELD(Blocked, FALSE);
                Seminar.TESTFIELD("Gen. Prod. Posting Group");
                Seminar.TESTFIELD("VAT Prod. Posting Group");
                "Seminar Name" := Seminar.Name;
                Duration := Seminar."Seminar Duration";
                "Seminar Price" := Seminar."Seminar Price";
                "Gen. Prod. Posting Group" := Seminar."Gen. Prod. Posting Group";
                "VAT Prod. Posting Group" := Seminar."VAT Prod. Posting Group";
                "Minimum Participants" := Seminar."Minimum Participants";
                "Maximum Participants" := Seminar."Maximum Participants";
            end;
        }
        field(4; "Seminar Name"; Text[100])
        {
            Caption = 'Seminar Name';
            DataClassification = CustomerContent;
        }
        field(5; "Instructor Resource No."; Code[20])
        {
            Caption = 'Instructor Resource No.';
            DataClassification = CustomerContent;
            TableRelation = Resource where(Type = const(Person));
        }
        field(6; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            DataClassification = CustomerContent;
        }
        field(7; Status; Enum ad_SeminarRegistrationStatus)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }
        field(8; Duration; Decimal)
        {
            Caption = 'Duration';
            DataClassification = CustomerContent;
        }
        field(9; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = CustomerContent;
        }
        field(10; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
            DataClassification = CustomerContent;
        }
        field(11; "Room Resource No."; Code[20])
        {
            Caption = 'Room Resource No.';
            DataClassification = CustomerContent;
            //TableRelation = Resource where(Type = const());
            // Dennison Changed to confirm
            TableRelation = Resource;

            trigger OnValidate()
            var
                SeminarRoom: Record Resource;
            begin
                if "Room Resource No." = xRec."Room Resource No." then
                    exit;

                IF "Room Resource No." = '' THEN BEGIN
                    "Room Name" := '';
                    "Room Address" := '';
                    "Room Address 2" := '';
                    "Room Post Code" := '';
                    "Room City" := '';
                    "Room County" := '';
                    "Room Country/Reg. Code" := '';
                END ELSE BEGIN
                    SeminarRoom.GET("Room Resource No.");
                    "Room Name" := SeminarRoom.Name;
                    "Room Address" := SeminarRoom.Address;
                    "Room Address 2" := SeminarRoom."Address 2";
                    "Room Post Code" := SeminarRoom."Post Code";
                    "Room City" := SeminarRoom.City;
                    "Room County" := SeminarRoom.County;
                    "Room Country/Reg. Code" := SeminarRoom."Country/Region Code";

                    IF CurrFieldNo = 0 THEN
                        exit;

                    IF (SeminarRoom."Maximum Participants" <> 0) AND
                   
                       (SeminarRoom."Maximum Participants" < "Maximum Participants")
                    THEN BEGIN
                        IF CONFIRM(ChangeSeminarRoomQst, TRUE,
                             "Maximum Participants",
                             SeminarRoom."Maximum Participants",
                             FIELDCAPTION("Maximum Participants"),
                             "Maximum Participants",
                             SeminarRoom."Maximum Participants")
                        THEN
                            "Maximum Participants" := SeminarRoom."Maximum Participants";
                    END;
                END;
            end;
        }
        field(12; "Room Name"; Text[100])
        {
            Caption = 'Room Name';
            DataClassification = CustomerContent;
        }
        field(13; "Room Address"; Text[50])
        {
            Caption = 'Room Address';
            DataClassification = CustomerContent;
        }
        field(14; "Room Address 2"; Text[50])
        {
            Caption = 'Room Address 2';
            DataClassification = CustomerContent;
        }
        field(15; "Room Post Code"; Code[20])
        {
            Caption = 'Room Post Code';
            DataClassification = CustomerContent;
            TableRelation = "Post Code";
            ValidateTableRelation = false;

            trigger OnValidate()
            begin
                PostCode.ValidatePostCode("Room City",
                    "Room Post Code",
                    "Room County",
                    "Room Country/Reg. Code",
                    (CurrFieldNo <> 0) and GuiAllowed);
            end;
        }
        field(16; "Room City"; Text[50])
        {
            Caption = 'Room City';
            DataClassification = CustomerContent;
        }
        field(17; "Room Country/Reg. Code"; Code[10])
        {
            Caption = 'Room Country/Reg. Code';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(18; "Room County"; Text[30])
        {
            Caption = 'Room County';
            DataClassification = CustomerContent;
        }
        field(19; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            DataClassification = CustomerContent;
        }
        field(20; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Product Posting Group";
        }
        field(21; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "VAT Product Posting Group";
        }
        field(22; Comment; Boolean)
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }
        field(23; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(24; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }
        field(25; "Reason Code"; Code[20])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            TableRelation = "Reason Code";
        }
        field(26; "No. Series"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
        field(27; "Posting No. Series"; Code[20])
        {
            Caption = 'Posting No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";

            trigger OnValidate()
            begin
                if "Posting No. Series" = '' then
                    exit;
                TestField("Posting No.", '');

                SeminarSetup.Get();
                SeminarSetup.TestField("Seminar Registration Nos.");
                SeminarSetup.TestField("Posted Seminar Reg. Nos.");
                NoSeriesMgt.TestSeries(SeminarSetup."Posted Seminar Reg. Nos.", "Posting No. Series");
            end;

            trigger OnLookup()
            begin
                SeminarRegHeader := Rec;
                SeminarSetup.Get();
                SeminarSetup.TestField("Seminar Registration Nos.");
                SeminarSetup.TestField("Posted Seminar Reg. Nos.");
                if NoSeriesMgt.LookupSeries(SeminarSetup."Posted Seminar Reg. Nos.", "Posting No. Series") then
                    Validate("Posting No. Series");

                Rec := SeminarRegHeader;
            end;
        }
        field(28; "Posting No."; Code[20])
        {
            Caption = 'Posting No.';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Index2; "Room Resource No.")
        {
            SumIndexFields = Duration;
        }
    }
    var
        SeminarSetup: Record "Seminar Set Up";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        PostCode: Record "Post Code";
        Seminar: Record Seminar;
        SeminarRegHeader: Record "Seminar Registration Header";
        SeminarCommentLine: Record "Seminar Comment Line";
        ChangeSeminarRoomQst: Label 'This Seminar is for %1 participants. \The selected Room has a maximum of %2 participants \Do you want to change %3 for the Seminar from %4 to %5?';
        SeminarRegLine: Record "Seminar Registration Line";
        SeminarCharge: Record "Seminar Charge";
        ErrCannotDeleteLine: Label 'Cannot delete the Seminar Registration, there exists at least one %1 where %2=%3.';
        ErrCannotDeleteCharge: Label 'Cannot delete the Seminar Registration, there exists at least one %1.';

    trigger OnInsert()
    begin
        if "No." = '' then begin
            SeminarSetup.Get();
            SeminarSetup.TestField("Seminar Registration Nos.");
            NoSeriesMgt.InitSeries(SeminarSetup."Seminar Registration Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        END;
        InitRecord;

        if GetFilter("Seminar No.") = '' then
            exit;

        IF GetRangeMin("Seminar No.") = GetRangeMax("Seminar No.") THEN
            Validate("Seminar No.", GetRangeMin("Seminar No."));
    end;

    trigger OnDelete()
    begin
        TestField(Status, Status::Cancelled);

        SeminarRegLine.RESET;
        SeminarRegLine.SETRANGE("Document No.", "No.");
        SeminarRegLine.SETRANGE(Registered, TRUE);
        IF SeminarRegLine.FIND('-') THEN
            ERROR(
              ErrCannotDeleteLine,
              SeminarRegLine.TABLECAPTION,
              SeminarRegLine.FIELDCAPTION(Registered),
              TRUE);
        SeminarRegLine.SETRANGE(Registered);
        SeminarRegLine.DELETEALL(TRUE);

        SeminarCharge.RESET;
        //SeminarCharge.SETRANGE("Document No.", "No.");
        SeminarCharge.SetRange("No.","No.");
        IF NOT SeminarCharge.ISEMPTY THEN
            ERROR(ErrCannotDeleteCharge, SeminarCharge.TABLECAPTION);

        SeminarCommentLine.Reset();
        SeminarCommentLine.SetRange(
            "Document Type", SeminarCommentLine."Document Type"::"Seminar Registration");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.DeleteAll();
    end;

    procedure InitRecord()
    begin
        if "Posting Date" = 0D then
            "Posting Date" := WorkDate();

        "Document Date" := WorkDate();

        SeminarSetup.Get();
        SeminarSetup.TestField("Posted Seminar Reg. Nos.");
        NoSeriesMgt.SetDefaultSeries("Posting No. Series", SeminarSetup."Posted Seminar Reg. Nos.");
    end;

    procedure AssistEdit(OldSeminarRegHeader: Record "Seminar Registration Header"): Boolean
    begin
        SeminarRegHeader := Rec;
        SeminarSetup.Get();
        SeminarSetup.TestField("Seminar Registration Nos.");
        if not NoSeriesMgt.SelectSeries(
            SeminarSetup."Seminar Registration Nos.",
            OldSeminarRegHeader."No. Series", "No. Series") then
            exit(false);

        SeminarSetup.Get();
        SeminarSetup.TestField("Seminar Registration Nos.");
        NoSeriesMgt.SetSeries("No.");
        Rec := SeminarRegHeader;
        exit(TRUE);
    end;
}
