Table 70019 "Seminar Ledger Entry"
{

    fields
//     {
//         field(1;"Entry No.";Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(2;"Seminar No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Seminar;
//         }
//         field(3;"Posting Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(4;"Document Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(5;"Entry Type";Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Registration, Cancellation';
//             OptionMembers = Registration," Cancellation";
//         }
//         field(6;"Document No";Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(7;Description;Text[50])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(8;"Bill To Customer Number";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Customer;
//         }
//         field(9;"Charge Type";Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Instructor, Room, Participant, Charge';
//             OptionMembers = Instructor," Room"," Participant"," Charge";
//         }
//         field(10;Type;Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Resource, G/L Account';
//             OptionMembers = Resource," G/L Account";
//         }
//         field(11;Quantity;Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(12;"Unit Price";Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(13;"Total Price";Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(14;"Participant Contact No";Code[10])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Contact;
//         }
//         field(15;"Partcipant Name";Text[50])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(16;Chargeable;Boolean)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(17;"Seminar Room Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Seminar Room";
//         }
//         field(18;"Instructor Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Instructor;
//         }
//         field(19;"Starting Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(20;"Seminar Registration No";Code[10])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(21;"Job No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Job;
//         }
//         field(22;"Remaining Ammount";Decimal)
//         {
//             Description = 'flowField; CalcFormula looks up \'
//                           "' Amount in the \'"
// ;
//             FieldClass = FlowField;
//         }
//         field(23;"Source Type";Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = '  , Seminar';
//             OptionMembers = "  "," Seminar";
//         }
//         field(24;"Source No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             Description = 'if Source Type=Seminar, relation\'
//                           "'able.'";
//             TableRelation = Seminar;
//         }
//         field(25;"Journal Batch Name";Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(26;"Source Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Source Code";
//         }
//         field(27;"Reason Code";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Reason Code";
//         }
//         field(28;"No. Series";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";
//         }
//         field(29;"User Id";Code[30])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "User Setup";
//         }
//     }

//     keys
//     {
//         key(Key1;"Entry No.")
//         {
//             Clustered = true;
//         }
//         key(Key2;"Seminar No.","Posting Date")
//         {
//         }
//         key(Key3;"Bill To Customer Number","Seminar Registration No","Charge Type","Participant Contact No")
//         {
//         }
//     }

//     fieldgroups
//     {
//     }
// }

 {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(2; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = CustomerContent;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(4; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }
        field(5; "Entry Type"; Enum "Acc. Schedule Line Totaling Type")
        {
            Caption = 'Entry Type';
            DataClassification = CustomerContent;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(7; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(8; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            DataClassification = CustomerContent;
        }
        field(9; "Charge Type"; Enum "Acc. Schedule Line Totaling Type")
        {
            Caption = 'Charge Type';
            DataClassification = CustomerContent;
        }
        field(10; Type; Enum ad_SeminarChargeType)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(11; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(12; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;
        }
        field(13; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            DataClassification = CustomerContent;
        }
        field(14; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            DataClassification = CustomerContent;
        }
        field(15; "Participant Name"; Text[100])
        {
            Caption = 'Partcipant Name';
            DataClassification = CustomerContent;
        }
        field(16; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
            DataClassification = CustomerContent;
        }
        field(17; "Room Resource No."; Code[20])
        {
            Caption = 'Room Resource No.';
            DataClassification = CustomerContent;
        }
        field(18; "Instructor Resource No."; Code[20])
        {
            Caption = 'Instructor Resource No.';
            DataClassification = CustomerContent;
        }
        field(19; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;
        }
        field(20; "Seminar Registration No."; Code[20])
        {
            Caption = 'Seminar Registration No.';
            DataClassification = CustomerContent;
        }
        field(21; "Res. Ledger Entry No."; Integer)
        {
            Caption = 'Res. Ledger Entry No.';
            DataClassification = CustomerContent;
        }
        field(22; "Source Type"; Enum "Acc. Schedule Line Totaling Type")
        {
            Caption = 'Source Type';
            DataClassification = CustomerContent;
        }
        field(23; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = CustomerContent;
        }
        field(24; "Journal Batch Name"; Code[20])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
        }
        field(25; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
        }
        field(26; "Reason Code"; Code[20])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
        }
        field(27; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
        field(28; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Index01; "Document No.", "Posting Date") { }
    }
}
