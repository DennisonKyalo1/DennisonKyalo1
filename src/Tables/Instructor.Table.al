Table 70001 Instructor
{

    fields
    {
        field(1;"Code";Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2;Name;Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(3;"Internal/External";Option)
        {
            DataClassification = ToBeClassified;
            OptionCaption = 'Internal,External';
            OptionMembers = Internal,External;
        }
        field(4;"Resource No.";Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource where (Type=const(Person));

            trigger OnValidate()
            begin
                if Resource.Get("Resource No.") then
                  Name:=Resource.Name;
            end;
        }
        field(5;"Contact No.";Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Contact;

            trigger OnValidate()
            begin
                if MyContact.Get("Contact No.") then
                  Name:=MyContact.Name;
            end;
        }
    }

    keys
    {
        key(Key1;"Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
        Resource: Record Resource;
        MyContact: Record Contact;
}

