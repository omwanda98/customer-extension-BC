codeunit 50100 CustomerCode
{
    procedure CelebrateCustomer(MyCustomer: Record Customer; ExtraMessage: Text)
    begin
        Message('Whoa! we have a new customer %1||\\%2', MyCustomer."No.", ExtraMessage);
    end;
    //  this should happen when a ne customer is inserted, 
    // we need a proceedure to subscribe to that event 
    // subscriber
    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    local procedure CustomerOnAfterInsert(var Rec: Record Customer)
    begin
        CelebrateCustomer(Rec, 'Congratulations from Green Com');
    end;
}