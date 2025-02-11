codeunit 70002 ad_SeminarJnlCheckLine
{
    TableNo = "Seminar Journal Line";

    trigger OnRun()
    begin
        RunCheck(Rec);
    end;

    var
        ErrDateCannotBeClosingDate: Label 'cannot be a closing date';

    procedure RunCheck(var SemJnlLine: Record "Seminar Journal Line")
    begin
        If SemJnlLine.EmptyLine() then
            exit;

        SemJnlLine.TestField("Posting Date");
        SemJnlLine.TestField("Instructor Resource No.");
        SemJnlLine.TestField("Seminar No.");

        CASE SemJnlLine."Charge Type" OF
            SemJnlLine."Charge Type"::Instructor:
                SemJnlLine.TestField("Instructor Resource No.");
            SemJnlLine."Charge Type"::Room:
                SemJnlLine.TestField("Room Resource No.");
            SemJnlLine."Charge Type"::Participant:
                SemJnlLine.TestField("Participant Contact No.");
        END;

        IF SemJnlLine.Chargeable THEN
            SemJnlLine.TestField("Bill-to Customer No.");

        CheckDates(SemJnlLine);
    end;

    local procedure CheckDates(SemJnlLine: Record "Seminar Journal Line")
    var
        UserSetupManagement: Codeunit "User Setup Management";
       
    begin
        SemJnlLine.TestField("Posting Date");
        if SemJnlLine."Posting Date" <> NormalDate(SemJnlLine."Posting Date") then
            SemJnlLine.FieldError("Posting Date", ErrDateCannotBeClosingDate);

        UserSetupManagement.CheckAllowedPostingDate(SemJnlLine."Posting Date");

        if SemJnlLine."Document Date" = 0D then
            exit;

        if SemJnlLine."Document Date" <> NormalDate(SemJnlLine."Document Date") then
            SemJnlLine.FieldError("Document Date", ErrDateCannotBeClosingDate);
    end;
}
