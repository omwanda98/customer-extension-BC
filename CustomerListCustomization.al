profile MyProfile
{
    Description = 'My Profile';
    RoleCenter = "Order Processor Role Center";
    Customizations = MyCustomization;
}
pagecustomization MyCustomization customizes "Customer List"
{
    layout
    {
        // Add changes to page layout here
        modify("Responsibility Center")
        {
            visible = false;
        }
    }

    // actions
    // {
    //     // Add changes to page actions here
    // }

    // //Variables, procedures and triggers are not allowed on Page Customizations
}