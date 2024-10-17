page 50100 BookCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                }
                field(Title; Rec.Title)
                {
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field(Author; Rec.Author)
                {
                }
                field(Hardcover; Rec.Hardcover)
                {
                }
                field("Page Count"; Rec."Page Count")
                {
                }
            }
        }
    }
}