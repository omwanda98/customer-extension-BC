codeunit 50101 InstallCode
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertBook('0001', 'The new times', 'Darwin', 500);
        InsertBook('0002', 'The Old Times', 'Ongoya', 250);
    end;

    local procedure InsertBook(BookNo: Code[20]; BookTitle: Text; BookAuthor: Text; BookPageCount: Integer)
    var
        Book: Record Book;
    begin
        with Book do begin
            if get(BookNo) then
                exit;

            "No." := BookNo;
            Author := BookAuthor;
            Hardcover := true;
            Title := BookTitle;
            "Page Count" := BookPageCount;

            Insert;
        end;
    end;
}