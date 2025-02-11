Table 70008 "Seminar Charge"
{

    fields
    //     {
    //         field(1; "Seminar Registration No."; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Seminar Registration Header";
    //         }
    //         field(2; "Line No."; Integer)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(3; "Job No."; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = Job;
    //         }
    //         field(4; Type; Option)
    //         {
    //             DataClassification = ToBeClassified;
    //             OptionCaption = 'Resource,G/L Account';
    //             OptionMembers = Resource,"G/L Account";
    //         }
    //         field(5; No; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             //Description = 'If Type=Resource, relation to\'
    //             //        "'source\'"
    //             ;

    //             trigger OnValidate()
    //             begin
    //                 case Type of
    //                     Type::Resource:
    //                         begin
    //                             Resource.Get(No);
    //                             Resource.TestField(Blocked, false);
    //                             Resource.TestField("Gen. Prod. Posting Group");
    //                             Description := Resource.Name;
    //                             "Gen. Prod Posting Group" := Resource."Gen. Prod. Posting Group";
    //                             "VAT Prod. Posting Group" := Resource."VAT Prod. Posting Group";
    //                             "Unit Of Measure" := Resource."Base Unit of Measure";
    //                             "Unit Price" := Resource."Unit Price";
    //                         end;
    //                     Type::"G/L Account":
    //                         begin
    //                             GLAccount.Get(No);
    //                             GLAccount.CheckGLAcc();
    //                             GLAccount.TestField("Direct Posting", true);
    //                             Description := GLAccount.Name;
    //                             "Gen. Prod Posting Group" := GLAccount."Gen. Prod. Posting Group";
    //                             "VAT Prod. Posting Group" := GLAccount."VAT Prod. Posting Group";
    //                         end;
    //                 end;
    //             end;
    //         }
    //         field(6; Description; Text[50])
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(7; Quantity; Decimal)
    //         {
    //             DataClassification = ToBeClassified;

    //             trigger OnValidate()
    //             begin
    //                 "Total Price" := "Unit Price" * Quantity;
    //             end;
    //         }
    //         field(8; "Unit Price"; Decimal)
    //         {
    //             DataClassification = ToBeClassified;

    //             trigger OnValidate()
    //             begin
    //                 "Total Price" := "Unit Price" * Quantity;
    //             end;
    //         }
    //         field(9; "Total Price"; Decimal)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(10; "To Invoice"; Boolean)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(11; "Bill To Customer No."; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = Customer;
    //         }
    //         field(12; "Unit Of Measure"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             //  Description = 'If Type=Resource, relation to\'
    //             //               "'ld of table 205\'"
    //             ;

    //             trigger OnValidate()
    //             begin
    //                 case Type of
    //                     Type::Resource:
    //                         begin
    //                             Resource.Get(No);
    //                             if "Unit Of Measure" = '' then begin
    //                                 "Unit Of Measure" := Resource."Base Unit of Measure";
    //                             end;
    //                             ResourceUofM.Get("No", "Unit Of Measure");
    //                             "QTY. Per Unit Of Measure" := ResourceUofM."QTY. Per Unit Of Measure";
    //                             "Unit Price" := ROUND(Resource."Unit Price" * "QTY. Per Unit Of Measure");
    //                         end;
    //                     Type::"G/L Account":
    //                         begin
    //                             "QTY. Per Unit Of Measure" := 1;
    //                         end;
    //                 end;
    //                 if CurrFieldNo = FieldNo("Unit Of Measure") then begin
    //                     Validate(Quantity);

    //                 end;
    //             end;
    //         }
    //         field(13; "Gen. Prod Posting Group"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "Gen. Product Posting Group";
    //         }
    //         field(14; "VAT Prod. Posting Group"; Code[20])
    //         {
    //             DataClassification = ToBeClassified;
    //             TableRelation = "VAT Product Posting Group";
    //         }
    //         field(15; "QTY. Per Unit Of Measure"; Decimal)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //         field(16; Registered; Boolean)
    //         {
    //             DataClassification = ToBeClassified;
    //         }
    //     }

    //     keys
    //     {
    //         key(Key1; "Seminar Registration No.", "Line No.", "Job No.")
    //         {
    //             Clustered = true;
    //         }
    //     }

    //     fieldgroups
    //     {
    //     }

    //     var
    //         Resource: Record Resource;
    //         GLAccount: Record "G/L Account";
    //         ResourceUofM: Record "Seminar Charge";
    // }
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
            NotBlank = true;
            TableRelation = "Seminar Registration Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; Type; Enum ad_SeminarChargeType)
        {
            Caption = 'Type';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if Type = xRec.Type then
                    exit;

                Description := '';
            end;
        }
        field(4; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            TableRelation =
                if (Type = const(Resource)) Resource where(Type = const(Person), Blocked = const(false))
            else
            if (Type = const("G/L Account")) "G/L Account" where(Blocked = const(false), "Direct Posting" = const(false));

            trigger OnValidate()
            begin
                case Type of
                    Type::Resource:
                        begin
                            Resource.GET("No.");
                            Resource.TESTFIELD(Blocked, FALSE);
                            Resource.TestField(Type, Resource.Type::Person);
                            Resource.TESTFIELD("Gen. Prod. Posting Group");
                            Description := Resource.Name;
                            "Gen. Prod. Posting Group" := Resource."Gen. Prod. Posting Group";
                            "VAT Prod. Posting Group" := Resource."VAT Prod. Posting Group";
                            "Unit of Measure Code" := Resource."Base Unit of Measure";
                            "Unit Price" := Resource."Unit Price";
                        end;
                    Type::"G/L Account":
                        begin
                            GLAccount.GET("No.");
                            GLAccount.CheckGLAcc();
                            GLAccount.TESTFIELD("Direct Posting", TRUE);
                            Description := GLAccount.Name;
                            "Gen. Prod. Posting Group" := GLAccount."Gen. Bus. Posting Group";
                            "VAT Prod. Posting Group" := GLAccount."VAT Bus. Posting Group";
                        end;
                end;
            end;
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(6; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                "Total Price" := Round("Unit Price" * Quantity, 0.01);
            end;
        }
        field(7; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DataClassification = CustomerContent;
            MinValue = 0;
            AutoFormatType = 2;

            trigger OnValidate()
            begin
                "Total Price" := Round("Unit Price" * Quantity, 0.01);
            end;
        }
        field(8; "Total Price"; Decimal)
        {
            Caption = 'Total Price';
            DataClassification = CustomerContent;
            Editable = false;
            AutoFormatType = 1;
        }
        field(9; "To Invoice"; Boolean)
        {
            Caption = 'To Invoice';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(10; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
        field(11; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            DataClassification = CustomerContent;
            TableRelation =
                if (Type = const(Resource)) "Resource Unit of Measure".Code where("Resource No." = field("No."))
            else
            "Unit of Measure".Code;

            trigger OnValidate()
            var
                ResourceUofM: Record "Resource Unit of Measure";
            begin
                CASE Type OF
                    Type::Resource:
                        BEGIN
                            Resource.GET("No.");
                            IF "Unit of Measure Code" = '' THEN BEGIN
                                "Unit of Measure Code" := Resource."Base Unit of Measure";
                            END;
                            ResourceUofM.GET("No.", "Unit of Measure Code");
                            "Qty. per Unit of Measure" := ResourceUofM."Qty. per Unit of Measure";
                            "Total Price" := ROUND(Resource."Unit Price" * "Qty. per Unit of Measure");
                        END;
                    Type::"G/L Account":
                        BEGIN
                            "Qty. per Unit of Measure" := 1;
                        END;
                END;
                IF CurrFieldNo = FIELDNO("Unit of Measure Code") THEN BEGIN
                    VALIDATE("Unit Price");
                END;
            end;
        }
        field(12; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "Gen. Product Posting Group";
        }
        field(13; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = CustomerContent;
            TableRelation = "VAT Product Posting Group";
        }
        field(14; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DataClassification = CustomerContent;
        }
        field(15; Registered; Boolean)
        {
            Caption = 'Registered';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(16; "Bill To Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }
    }
    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    var
        Resource: Record Resource;
        GLAccount: Record "G/L Account";

    trigger OnDelete()
    begin
        TestField(Registered, false);
    end;
}

