Table 70002 "Seminar Set Up"
{
Caption = 'Seminar Setup';
    fields
//     {
//         field(1; "Primary Key"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(2; "Seminar Nos."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";
//         }
//         field(3; "Seminar Registration Nos."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";
//         }
//         field(4; "Posted Seminar Nos."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";
//         }
//     }

//     keys
//     {
//         key(Key1; "Primary Key")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//     }
// }

 {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
            DataClassification = CustomerContent;
        }
        field(3; "Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            DataClassification = CustomerContent;
        }
        field(4; "Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}