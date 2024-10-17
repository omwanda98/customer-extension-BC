table 50100 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;

        }
        field(2; Title; Text[50])
        {
            Caption = 'Title';
            DataClassification = ToBeClassified;
        }
        field(3; Author; Text[50])
        {
            Caption = 'Author';
            DataClassification = ToBeClassified;
        }
        field(4; Hardcover; Boolean)
        {
            Caption = 'Hardcover';
            DataClassification = ToBeClassified;
        }
        field(5; "Page Count"; Integer)
        {
            Caption = 'Page Count';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }
}