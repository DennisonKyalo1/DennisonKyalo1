Table 70014 "Posted Seminar Charge"
{

    fields
    {
        field(1;"Seminar Registration No.";Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2;"Line No.";Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3;"Job No.";Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Job;
        }
        field(4;Type;Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'Resource,G/L Account';
            OptionMembers = Resource,"G/L Account";
        }
        field(5;"No.";Code[20])
        {
            DataClassification = ToBeClassified;
          //  Description = 'If Type=Resource, relation to the\'le. If Type=G/L\'"
;
        }
        field(6;Description;Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(7;Quantity;Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8;"Unit Price";Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9;"Total Price";Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10;"To Invoice";Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(11;"Bill To Customer Number";Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer;
        }
        field(12;"Unit of Measure";Code[20])
        {
            DataClassification = ToBeClassified;
         //   Description = 'If Type=Resource, relation to the \' the Resource Unit \'"
;
        }
        field(13;"Gen. Prod. Posting Group";Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Product Posting Group";
        }
        field(14;"VAT Prod. Posting Group";Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "VAT Product Posting Group";
        }
        field(15;"Qty. Per Unit of Measure";Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16;Registered;Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1;"Seminar Registration No.","Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

