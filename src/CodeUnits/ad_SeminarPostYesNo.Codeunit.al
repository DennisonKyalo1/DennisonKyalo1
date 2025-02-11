codeunit 70005 ad_SeminarPostYesNo
{
    TableNo = "Seminar Registration Header";

    trigger OnRun()
    begin
        SeminarRegHeader.COPY(Rec);
        Code;
        Rec := SeminarRegHeader;
    end;

    var
        SeminarRegHeader: Record "Seminar Registration Header";
        SeminarPost: Codeunit ad_SeminarPost;
        ContinuePostingQst: Label 'Continue to post Seminar Registration No.: %1?';

    local procedure "Code"();
    begin
        if NOT Confirm(ContinuePostingQst, FALSE, SeminarRegHeader."No.") then
            exit;
        SeminarPost.Run(SeminarRegHeader);
        COMMIT;
    end;
}
