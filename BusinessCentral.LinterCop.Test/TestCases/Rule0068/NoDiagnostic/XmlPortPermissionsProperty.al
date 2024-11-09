xmlport 50000 MyXmlport
{
    Direction = Import;
    Permissions = tabledata MyTable = im;

    schema
    {
        textelement(NodeName1)
        {
            [|tableelement(NodeName2; MyTable)|]
            {
                fieldattribute(NodeName3; NodeName2.MyField)
                {

                }
            }
        }
    }
}
xmlport 50001 MyXmlport2
{
    Direction = Export;
    Permissions = tabledata MyTable = r;

    schema
    {
        textelement(NodeName1)
        {
            [|tableelement(NodeName2; MyTable)|]
            {
                fieldattribute(NodeName3; NodeName2.MyField)
                {

                }
            }
        }
    }
}
xmlport 50002 MyXmlport3
{
    Direction = Both;
    Permissions = tabledata MyTable = rim;

    schema
    {
        textelement(NodeName1)
        {
            [|tableelement(NodeName2; MyTable)|]
            {
                fieldattribute(NodeName3; NodeName2.MyField)
                {

                }
            }
        }
    }
}

xmlport 50003 MyXmlport4
{

    Permissions = tabledata MyTable = rim;

    schema
    {
        textelement(NodeName1)
        {
            [|tableelement(NodeName2; MyTable)|]
            {
                fieldattribute(NodeName3; NodeName2.MyField)
                {

                }
            }
        }
    }
}

table 50000 MyTable
{
    Caption = '', Locked = true;

    fields
    {
        field(1; MyField; Integer)
        {
            Caption = '', Locked = true;
            DataClassification = ToBeClassified;
        }
        field(2; MyField2; Integer)
        {
            Caption = '', Locked = true;
            DataClassification = ToBeClassified;
        }
    }
}