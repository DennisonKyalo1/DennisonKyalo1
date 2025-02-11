codeunit 70006 ad_EventSubNavigate
{
    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnAfterNavigateFindRecords', '', false, false)]
    local procedure OnAfterNavigateFindRecords(
        sender: Page Navigate;
        var DocumentEntry: Record "Document Entry";
        DocNoFilter: Text;
        PostingDateFilter: Text
    )
    begin
        IF PostedSeminarRegHeader.ReadPermission then begin
            PostedSeminarRegHeader.RESET;
            PostedSeminarRegHeader.SETFILTER("No.", DocNoFilter);
            PostedSeminarRegHeader.SETFILTER("Posting Date", PostingDateFilter);
            sender.InsertIntoDocEntry(DocumentEntry,
                DATABASE::"Posted Seminar Reg. Header",
                0, PostedSeminarRegHeader.TableCaption,
                PostedSeminarRegHeader.Count);
        end;

        IF SeminarLedgEntry.ReadPermission then begin
            SeminarLedgEntry.RESET;
            SeminarLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            SeminarLedgEntry.SETFILTER("Document No.", DocNoFilter);
            SeminarLedgEntry.SETFILTER("Posting Date", PostingDateFilter);
            sender.InsertIntoDocEntry(DocumentEntry,
                DATABASE::"Seminar Ledger Entry",
                0, SeminarLedgEntry.TableCaption,
                SeminarLedgEntry.Count);
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnAfterNavigateShowRecords', '', false, false)]
    local procedure OnAfterNavigateShowRecords(
        TableID: Integer;
        DocNoFilter: Text;
        PostingDateFilter: Text
    )
    begin
        case TableID of
            DATABASE::"Posted Seminar Reg. Header":
                PAGE.RUN(0, PostedSeminarRegHeader);
            DATABASE::"Seminar Ledger Entry":
                PAGE.RUN(0, SeminarLedgEntry);
        end;
    end;

    var
        [SecurityFiltering(SecurityFilter::Filtered)]
        PostedSeminarRegHeader: Record "Posted Seminar Reg. Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        SeminarLedgEntry: Record "Seminar Ledger Entry";
}
