Table 70011 "Seminar Register"
{

    fields
    //     {
    //         field(1;"No.";Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(2;"From Entry No.";Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Seminar Ledger Entry";
    //         }
    //         field(3;"To Entry No.";Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(4;"Creation Date";Date)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(5;"Source Code";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Source Code";
    //         }
    //         field(6;"User ID";Code[30])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "User Setup";
    //         }
    //         field(7;"Journal Batch Name";Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //     }

    //     keys
    //     {
    //         key(Key1;"No.")
    //         {
    //             Clustered = true;
    //         }
    //         key(Key2;"Creation Date")
    //         {
    //         }
    //         key(Key3;"Source Code","Journal Batch Name","Creation Date")
    //         {
    //         }
    //     }

    //     fieldgroups
    //     {
    //     }

    //     var
    //         LoginManagement: Codeunit LogInManagement;
    // }

    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "From Entry No."; Integer)
        {
            Caption = 'From Entry No.';
            DataClassification = CustomerContent;
        }
        field(3; "To Entry No."; Integer)
        {
            Caption = 'To Entry No.';
            DataClassification = CustomerContent;
        }
        field(4; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            DataClassification = CustomerContent;
        }
        field(5; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
        }
        field(6; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = CustomerContent;
        }
        field(7; "Journal Batch Name"; Code[20])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Index02; "Creation Date") { }
        key(Index03; "Source Code", "Journal Batch Name", "Creation Date") { }
    }

}
