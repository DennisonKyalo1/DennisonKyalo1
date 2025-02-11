Table 70000 "Seminar Room"
{

    fields
    {
        field(1; "Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Address; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Address 2"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Seminar City"; Text[30])
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                /*PostCode.RESET;
                PostCode.SETRANGE(Code,Code);
                IF PostCode.GET THEN
                  City:=PostCode.City;*/

            end;
        }
        field(6; "Post Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Relations to post code table 225';
            TableRelation = "Post Code";

            trigger OnValidate()
            begin
                /*PostCode.RESET;
                PostCode.SETRANGE(Code,Code);
                IF PostCode.GET THEN
                  City:=PostCode.City;*/
                //  IF PostCode.GET("City") THEN
                //  City:=PostCode.City;
                if PostCode.Get("Seminar City") then
                    "Seminar City" := PostCode.City;

            end;
        }
        field(7; "Country/Region code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Description = 'Relation to table 9 country/region';
            TableRelation = "Country/Region";
        }
        field(8; "Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(9; "Fax No."; Text[30])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(10; "Name 2"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Contact; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(12; "E-Mail"; Text[80])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(13; "Home Page"; Text[80])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
        }
        field(14; "Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(15; Allocation; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Resource No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource;

            trigger OnValidate()
            begin
                /*Resource.RESET;
                Resource.SETRANGE("No.",Code);
                IF Resource.GET THEN
                  Name:=Resource.Name;*/
                if Resource.Get("Resource No.") then
                    Name := Resource.Name;

            end;
        }
        field(17; Comment; Boolean)
        {
            DataClassification = ToBeClassified;
            // Description = 'FlowField; checks whether any \'
            //  "'n the Comment \'"
            ;
        }
        field(18; "Internal/extenal"; Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'Internal,External';
            OptionMembers = Internal,External;
        }
        field(19; "Contact No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Contact;

            trigger OnValidate()
            begin
                /*MyContact.RESET;
                MyContact.SETRANGE("No.",Code);
                IF MyContact.GET THEN
                  Name:=MyContact.Name;*/
                if MyContact.Get("Contact No.") then
                    Name := MyContact.Name;
                Contact := MyContact.Name;

            end;
        }
    }

    keys
    {
        key(Key1; "Code")

        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        PostCode: Record "Post Code";
        Resource: Record Resource;
        MyContact: Record Contact;
}

