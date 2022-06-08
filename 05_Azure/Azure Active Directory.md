# Azure Active Directory
Normally, for every service and user, you would have to add a password and username. This can get out of hand really quickly as passwords and usernames stack up very fast. To mitigate this problem, you can use what's called Identity and Access Management(IAM).

## Key terminology

## Exercise

### Sources
[Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis)

### Overcome challenges
- Learned about AAD
- Learned how to use AAD

### Results

## **What is Azure Active Directory?**
Azure's version of a IAM is called Azure Active Directory(Azure AD). This service allows you to easily manage what access your employees have, with only a single account. This eliminates the use of multiple account for the same user. Instead, everything can be managed by an admin(istrator). Inherently, this works with services provided by Microsoft(such as Office 365), but you can also apply it other apps or resources used/created by your company.

This service is used by 3 types of audiences:
- IT Admins: The admins take care of sign-in and solve issues regarding authentication.
- App Developers: The App Developers make use of the services that are granted by the administrator to develop the applications.
- Online customers: These are mainly interested in services like Office 365.

To expand on the capabilities of Azure AD, you can upgrade to a Paid version. There's 4 (relevant) tiers, which are explained in the following diagram:

![Pricing](../00_includes/05_Azure/Azure%20AD/SS_PricingDiagram.png)

## **How do you use Azure Active Directory?**
After navigating to Azure AD, you're met with a few options. You can find all the actions that you are able to take within this window, though some features are locked behind a paid version.

![Options](../00_includes/05_Azure/Azure%20AD/SS_OverviewOptions.png)