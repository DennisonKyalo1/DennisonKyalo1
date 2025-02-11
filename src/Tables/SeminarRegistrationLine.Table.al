Table 70007 "Seminar Registration Line"
{
Caption = 'Seminar Registration Line';
    fields
//     {
//         field(1;"Seminar Registration No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = "Seminar Registration Header";
//         }
//         field(2;"Line No.";Integer)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(3;"Bill To Customer No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Customer where (Blocked = const(" "));
            

//             trigger OnValidate()
//             begin
//                // if Registered=true then
//                 //  Error('You cannot change bill to customer number for a registered record' );
//            TestField(Registered, false);
//             end;
//         }
//         field(4;"Participant Contact No.";Code[20])
//         {
//             DataClassification = ToBeClassified;
//             TableRelation = Contact;

//            // trigger OnLookup()
//            trigger OnValidate()
//             begin
//                 ContactBusinessRelation.Reset;
//                 ContactBusinessRelation.SetRange("Link to Table",ContactBusinessRelation."link to table"::Customer);
//                 ContactBusinessRelation.SetRange("No.","Bill To Customer No.");
//                 if ContactBusinessRelation.FindFirst then begin
//                   Contact.SetRange("Company No.",ContactBusinessRelation."Contact No.");
//                  // IF FORM.RUNMODAL(FORM::"Contact list",Contact) = ACTION::lookupok THEN BEGIN
//                   if Contact.FindFirst then begin
//                    "Participant Contact No.":=Contact."No.";
//                      end;
//                   end;
//                   CalcFields("Participant Name");
//             end;
//         }
//         field(5;"Participant Name";Text[80])
//         {
//             DataClassification = ToBeClassified;
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

//             trigger OnValidate()
//             begin
//                 if "Seminar Price" = 0 then begin
//                   "Line Discount Ammount" :=0;
//                   end else begin
//                     GLSetup.Get;
//                     "Line Discount Ammount":=ROUND("Line Discount %"*"Seminar Price"*0.01,GLSetup."Amount Rounding Precision");
//                   end;
//                   UpdateAmount;
//             end;
//         }
//         field(12;"Line Discount Ammount";Decimal)
//         {
//             DataClassification = ToBeClassified;

//             trigger OnValidate()
//             begin
//                 if "Seminar Price" = 0 then begin
//                   "Line Discount %":=0;
//                   end else begin
//                     GLSetup.Get;
//                     "Line Discount %":=ROUND("Line Discount Ammount"/"Seminar Price"*100,GLSetup."Amount Rounding Precision");
//                   end;
//                   UpdateAmount;
//             end;
//         }
//         field(13;Ammount;Decimal)
//         {
//             DataClassification = ToBeClassified;

//             trigger OnValidate()
//             begin
//                 TestField("Bill To Customer No.");
//                 TestField("Seminar Price");
//                 GLSetup.Get;
//                 Ammount:=ROUND(Ammount,GLSetup."Amount Rounding Precision");
//                 "Line Discount %":="Seminar Price"-Ammount;
//                 if "Seminar Price" = 0 then begin
//                   "Line Discount %":=0 end else begin
//                     "Line Discount %" :=ROUND("Line Discount %"/"Seminar Price"*100,GLSetup."Amount Rounding Precision");
//                     end;
//             end;
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

//     trigger OnDelete()
//     begin
//         if Registered=true then
//           Error('You cannot delete a registered line');
//     end;

//     trigger OnInsert()
//     begin
//         "Register Date":=WorkDate;

//         SeminarRegHeader.Reset;
//         SeminarRegHeader.SetRange(No,"Seminar Registration No.");
//         if SeminarRegHeader.FindSet then begin
//          // REPEAT
//            "Seminar Price":=SeminarRegHeader."Seminar Price";
//            Ammount:=SeminarRegHeader."Seminar Price";
//          //UNTIL NEXT=0;
//           end;
//     end;

//     var
//         SeminarRegHeader: Record "Seminar Registration Header";
//         ContactBusinessRelation: Record "Contact Business Relation";
//         Contact: Record Contact;
//         GLSetup: Record "General Ledger Setup";

//     local procedure GetSeminarRegHeader()
//     begin
//         if SeminarRegHeader.No <> "Seminar Registration No." then begin
//           SeminarRegHeader.Get("Seminar Registration No.");
//           end;
//     end;

//     local procedure CalculateAmount()
//     begin
//         Ammount:=ROUND(("Seminar Price"/100)*(100-"Line Discount %"));
//     end;

//     local procedure UpdateAmount()
//     begin
//     end;
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

            trigger OnValidate()
            begin
                TestField(Registered, false);
            end;
        }
        field(4; "Participant Contact No."; Code[20])
        {
            Caption = 'Participant Contact No.';
            DataClassification = CustomerContent;
            TableRelation = Contact;

            trigger OnValidate()
            begin
                IF ("Bill-to Customer No." = '') or
                   ("Participant Contact No." = '')
                THEN
                    exit;

                Contact.GET("Participant Contact No.");
                ContactBusinessRelation.RESET;
                ContactBusinessRelation.SETCURRENTKEY("Link to Table", "No.");
                ContactBusinessRelation.SETRANGE("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
                ContactBusinessRelation.SETRANGE("No.", "Bill-to Customer No.");
                IF not ContactBusinessRelation.FINDFIRST THEN
                    exit;

                IF ContactBusinessRelation."Contact No." <> Contact."Company No." THEN BEGIN
                    ERROR(ContactHasDifferentCompanyThanCustomer, Contact."No.", Contact.Name, "Bill-to Customer No.");
                END;
            end;

            trigger OnLookup()
            begin
                ContactBusinessRelation.RESET;
                ContactBusinessRelation.SETRANGE("Link to Table", ContactBusinessRelation."Link to Table"::Customer);
                ContactBusinessRelation.SETRANGE("No.", "Bill-to Customer No.");
                IF not ContactBusinessRelation.FINDFIRST THEN
                    exit;

                Contact.Reset();
                Contact.SETRANGE("Company No.", ContactBusinessRelation."Contact No.");
                IF PAGE.RUNMODAL(PAGE::"Contact List", Contact) = ACTION::LookupOK THEN BEGIN
                    "Participant Contact No." := Contact."No.";
                    "Participant Name" := Contact.Name;
                END;
            end;
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

            trigger OnValidate()
            begin
                Validate("Line Discount %");
            end;
        }
        field(11; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                IF "Seminar Price" = 0 THEN BEGIN
                    "Line Discount Amount" := 0;
                END ELSE BEGIN
                    GLSetup.GET;
                    "Line Discount Amount" := ROUND("Line Discount %" * "Seminar Price" * 0.01, GLSetup."Amount Rounding Precision");
                END;
                UpdateAmount;
            end;
        }
        field(12; "Line Discount Amount"; Decimal)
        {
            Caption = 'Line Discount Amount';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                IF "Seminar Price" = 0 THEN BEGIN
                    "Line Discount %" := 0;
                END ELSE BEGIN
                    GLSetup.GET;
                    "Line Discount %" := ROUND("Line Discount Amount" / "Seminar Price" * 100, GLSetup."Amount Rounding Precision");
                END;
                UpdateAmount;
            end;
        }
        field(13; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                TESTFIELD("Bill-to Customer No.");
                TESTFIELD("Seminar Price");
                GLSetup.GET;
                Amount := ROUND(Amount, GLSetup."Amount Rounding Precision");
                "Line Discount Amount" := "Seminar Price" - Amount;
                IF "Seminar Price" = 0 THEN BEGIN
                    "Line Discount %" := 0;
                END ELSE BEGIN
                    "Line Discount %" := ROUND("Line Discount Amount" / "Seminar Price" * 100, GLSetup."Amount Rounding Precision");
                END;
            end;
        }
        field(14; Registered; Boolean)
        {
            Caption = 'Registered';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(15; "Register Date"; Date)
        {
            Caption = 'Register Date';
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        GetSeminarRegHeader;
        "Registration Date" := WORKDATE;
        "Seminar Price" := SeminarRegHeader."Seminar Price";
        Amount := SeminarRegHeader."Seminar Price";
    end;

    trigger OnDelete()
    begin
        TestField(Registered, false);
    end;

    var
        GLSetup: Record "General Ledger Setup";
        SeminarRegHeader: Record "Seminar Registration Header";
        Contact: Record Contact;
        ContactBusinessRelation: Record "Contact Business Relation";
        ContactHasDifferentCompanyThanCustomer: Label 'Contact %1 %2 is related to a different company than customer %3.';

    PROCEDURE GetSeminarRegHeader();
    BEGIN
        IF SeminarRegHeader."No." <> "Document No." THEN BEGIN
            SeminarRegHeader.GET("Document No.");
        END;
    END;

    PROCEDURE CalculateAmount();
    BEGIN
        Amount := ROUND(("Seminar Price" / 100) * (100 - "Line Discount %"));
    END;

    PROCEDURE UpdateAmount();
    BEGIN
        GLSetup.GET;
        Amount := ROUND("Seminar Price" - "Line Discount Amount", GLSetup."Amount Rounding Precision");
    END;
}
