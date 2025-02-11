codeunit 70000 ad_SeminarRegShowLedger
{
    TableNo = "Seminar Register";

    trigger OnRun()
    begin
        SeminarLedgerEntry.SetRange("Entry No.", Rec."From Entry No.", Rec."To Entry No.");
        PAGE.Run(PAGE::ad_SeminarLedgerEntries, SeminarLedgerEntry);
    end;

    var
        SeminarLedgerEntry: Record "Seminar Ledger Entry";
}
