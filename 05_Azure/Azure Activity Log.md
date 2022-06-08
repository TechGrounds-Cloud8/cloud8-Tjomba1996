# Azure Activity Log
Trying to remember everything you have done to the smallest detail is an impossible task, but it can very well be the thing that you need to do when trying to troubleshoot a certain problem. Luckily there are some services that can aid you in keeping track of all the things you have done. One of these services is Azure Activity Log.

## Key terminology
- **Log** = Record of events

## Exercise
- Study Activity Log

### Sources
[Azure Activity Log](https://docs.microsoft.com/en-us/azure/azure-monitor/essentials/activity-log)

### Overcome challenges
- Learned about Azure Activity and it's uses

### Results

## **What is Azure Activity Log?**
Azure Activity Log is a logging platform, that allows you to track Subscription-level events. Information includes:
- Operation name
- Status: Succeeded or Failed
- Time(stamp) of alteration/creation
- Subscription
- What initiated the event

![Example Log](../00_includes/05_Azure/Azure%20Activity%20Log/SS_AcitivtyLog.png)

Acitivity Log allows you to download these files or export them to other services(see "Combining Azure Activity Log with other services).

## **Why should you use Azure Activity Log?**
As stated earlier, trying to keep track of all the actions and when them have been done is an impossible task. Activity Log alleviate this issue, and with great precision as well. Provided that you know the time at which an application has malfunctioned, this can allow you to see what action may have resulted in disrupting the application. This will make troubleshooting a lot easier.

## **Combining Azure Activity Log with other services**
For more functionality, you should create a diagnostic setting to send the Activity log to one or more of these locations for the following reasons:

- To **Azure Monitor Logs** for more complex querying and alerting, and longer retention (up to two years).
- To **Azure Event Hubs** to forward outside of Azure.
- To **Azure Storage** for cheaper, long-term archiving.
