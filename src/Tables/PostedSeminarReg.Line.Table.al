Table 70013 "Posted Seminar Reg. Line"
{

    fields
//     {
//         field(1;"Seminar Registration No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Posted Seminar Reg. Header";
//         }
//         field(2;"Line No.";Integer)
//         {
//             AutoIncrement = true;
//             DataClassification = ToBeClassified;
//         }
//         field(3;"Bill To Customer Number.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Customer;
//         }
//         field(4;"Participant Contact No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Contact;
//         }
//         field(5;"Participant Name";Text[80])
//         {
//             FieldClass = Normal;
//         }
//         field(6;"Register Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(7;"To Invoice";Boolean)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(8;Participated;Boolean)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(9;"Confirmation Date";Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(10;"Seminar Price";Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(11;"Line Discount %";Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(12;"Line Discount Ammount";Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(13;Ammount;Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(14;Registered;Boolean)
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(Key1;"Seminar Registration No.","Line No.")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//     }
// }

 {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer where(Blocked = const(" "));
        }
        field(4; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            DataClassification = CustomerContent;
            TableRelation = Contact;

        }
        field(5; "Participant Name"; Text[100])
        {
            Caption = 'Participant Name';
            DataClassification = CustomerContent;
        }
        field(6; "Registration Date"; Date)
        {
            Caption = 'Registration Date';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(7; "To Invoice"; Boolean)
        {
            Caption = 'To Invoice';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(8; Participated; Boolean)
        {
            Caption = 'Participated';
            DataClassification = CustomerContent;
        }
        field(9; "Confirmation Date"; Date)
        {
            Caption = 'Confirmation Date';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(10; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            DataClassification = CustomerContent;
            AutoFormatType = 2;
        }
        field(11; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 0 : 5;
        }
        field(12; "Line Discount Amount"; Decimal)
        {
            Caption = 'Line Discount Amount';
            DataClassification = CustomerContent;
        }
        field(13; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;
        }
        field(14; Registered; Boolean)
        {
            Caption = 'Registered';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}
