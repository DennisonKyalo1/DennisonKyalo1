Table 70010 "Seminar Journal Line"
{

    fields
//     {
//         field(1; "Journal Template Name"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(2; "Line No."; Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(3; "Seminar No."; Code[10])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(4; "Posting Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(5; "Document Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(6; "Entry Type"; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Registration,cancellation';
//             OptionMembers = Registration,cancellation;
//         }
//         field(7; "Document No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(8; Description; Text[50])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(9; "Bill To Customer No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             Description = 'Relation to Customer table';
//             TableRelation = Customer;
//         }
//         field(10; "Charge Type"; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Instructor,Room,Participant,Charge';
//             OptionMembers = Instructor,Room,Participant,Charge;
//         }
//         field(11; Type; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = 'Resource, G/L Account';
//             OptionMembers = Resource," G/L Account";
//         }
//         field(12; Quantity; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(13; "Unit Price"; Decimal)
//         {
//             AutoFormatType = 2;
//             DataClassification = ToBeClassified;
//         }
//         field(14; "Total Price"; Decimal)
//         {
//             AutoFormatType = 1;
//             DataClassification = ToBeClassified;
//         }
//         field(15; "Participant Contact No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Contact;
//         }
//         field(16; "Participant Name"; Text[50])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(17; Chargeable; Boolean)
//         {
//             DataClassification = ToBeClassified;
//             Description = 'initial value is Yes.';
//         }
//         field(18; "Seminar Room Code"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Seminar Room";
//         }
//         field(19; "Instructor Code"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Instructor;
//         }
//         field(20; "Starting Date"; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(21; "Seminar Registration No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(22; "Job No."; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Job;
//         }
//         field(23; "Job Ledger Entry No"; Integer)
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Job Ledger Entry";
//         }
//         field(24; "Source Type"; Option)
//         {
//             DataClassification = ToBeClassified;
//             OptionCaption = ' ,Seminar';
//             OptionMembers = " "," Seminar";
//         }
//         field(25; "Source No"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(26; "Journal Batch Name"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(27; "Source Code"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Source Code";
//         }
//         field(28; "Reason Code"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Reason Code";
//         }
//         field(29; "Posting No. Series"; Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "No. Series";
//         }
//     }

//     keys
//     {
//         key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//     }

//     local procedure EmptyLine(): Boolean
//     begin
//         if "Seminar No." = '' then
//             //  EmptyLine:=true;
//             EmptyLine();
//     end;
// }

 {
        field(1; "Journal Template Name"; Code[20])
        {
            Caption = 'Journal Template Name';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = CustomerContent;
            TableRelation = Seminar;
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Document Date" := "Posting Date";
            end;
        }
        field(5; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }
        field(6; "Entry Type"; Enum ad_SeminarJournalEntryType)
        {
            Caption = 'Entry Type';
            DataClassification = CustomerContent;
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
        }
        field(8; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(10; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(11; "Charge Type"; Enum ad_SeminarJournalChargeType)
        {
            Caption = 'Charge Type';
            DataClassification = CustomerContent;
        }
        field(12; Type; Enum ad_SeminarChargeType)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(13; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }
        field(14; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;
        }
        field(15; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            DataClassification = CustomerContent;
        }
        field(16; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            DataClassification = CustomerContent;
            TableRelation = Contact;
        }
        field(17; "Participant Name"; Text[100])
        {
            Caption = 'Participant Name';
            DataClassification = CustomerContent;
        }
        field(18; Chargeable; Boolean)
        {
            Caption = 'Chargable';
            DataClassification = CustomerContent;
        }
        field(19; "Room Resource No."; Code[20])
        {
            Caption = 'Room Resource No.';
            DataClassification = CustomerContent;
            TableRelation = Resource; //where(Type = const(Room));
        }
        field(20; "Instructor Resource No."; Code[20])
        {
            Caption = 'Instructor Resource No.';
            DataClassification = CustomerContent;
            TableRelation = Resource where(Type = const(Person));
        }
        field(21; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            DataClassification = CustomerContent;
        }
        field(22; "Seminar Registration No."; Code[20])
        {
            Caption = 'Seminar Registration No.';
            DataClassification = CustomerContent;
        }
        field(23; "Res. Ledger Entry No."; Integer)
        {
            Caption = 'Res. Ledger Entry No.';
            DataClassification = CustomerContent;
            TableRelation = "Res. Ledger Entry";
        }
        field(30; "Source Type"; Enum ad_SeminarJournalSourceType)
        {
            Caption = 'Source Type';
            DataClassification = CustomerContent;
        }
        field(31; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = CustomerContent;
            TableRelation = if ("Source Type" = const(Seminar)) Seminar;
        }
        field(32; "Journal Batch Name"; Code[20])
        {
            Caption = 'Journal Batch Name';
            DataClassification = CustomerContent;
        }
        field(33; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            DataClassification = CustomerContent;
            TableRelation = "Source Code";
            Editable = false;
        }
        field(34; "Reason Code"; Code[20])
        {
            Caption = 'Reason Code';
            DataClassification = CustomerContent;
            TableRelation = "Reason Code";
        }
        field(35; "Posting No. Series"; Code[20])
        {
            Caption = 'Posting No. Series';
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
    }
    procedure EmptyLine(): Boolean
    begin
        exit(("Seminar No." = '') and (Quantity = 0));
    end;
}