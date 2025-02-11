Table 70012 "Posted Seminar Reg. Header"
{
    LookupPageID = 70014;

    fields
    //     {
    //         field(1;"No.";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(2;"Starting Date";Date)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(3;"Seminar No.";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = Seminar;
    //         }
    //         field(4;"Seminar Name";Text[100])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(5;"Instructor Code";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = Instructor;
    //         }
    //         field(6;"Instructor Name";Text[100])
    //         {
    //             CalcFormula = lookup(Instructor.Name);
    //             Editable = false;
    //             FieldClass = FlowField;
    //         }
    //         field(7;Duration;Decimal)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(8;"Maximum Participants";Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(9;"Minimum Partcipants";Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(10;"Seminar Room Code";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Seminar Room";
    //         }
    //         field(11;"Seminar Room Name";Text[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(12;"Seminar Room Address";Text[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(13;"Seminar Room Adderess2";Text[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(14;"Seminar Room Post Code";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Post Code";
    //         }
    //         field(15;"Seminar Room City";Text[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(16;"Seminar Room Phone No.";Text[80])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(17;"Seminar Price";Decimal)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(18;"Gen. Prod. Posting Group";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Gen. Product Posting Group";
    //         }
    //         field(19;"VAT Prod. Posting Group";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "VAT Product Posting Group";
    //         }
    //         field(20;Comment;Boolean)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(21;"Posting Date";Date)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(22;"Document Date";Date)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(23;"Job No.";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = Job;
    //         }
    //         field(24;"Reason Code";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Reason Code";
    //         }
    //         field(25;"No. Series";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "No. Series";
    //         }
    //         field(26;"Registration No. Series";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "No. Series";
    //         }
    //         field(27;"Registration No.";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(28;"User ID";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = User;
    //         }
    //         field(29;"Source Code";Code[10])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Source Code";
    //         }
    //     }

    //     keys
    //     {
    //         key(Key1;"No.","Seminar Room Code")
    //         {
    //             Clustered = true;
    //         }
    //     }

    //     fieldgroups
    //     {
    //     }
    // }

    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;
        }
        field(3; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = CustomerContent;
            TableRelation = Seminar where(Blocked = const(false));
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
            // TableRelation = Resource where(Type = const(Room));
            TableRelation = Resource;
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
        field(27; "Registration No. Series"; Code[20])
        {
            Caption = 'Registration No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";

        }
        field(29; "User ID"; Text[50])
        {
            DataClassification = CustomerContent;
            TableRelation = User;

            trigger OnLookup()
            var
                UserMgt: Codeunit "User Management";
            begin
                UserMgt.DisplayUserInformation("User ID");
            end;
        }
        field(30; "Source Code"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
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
}
