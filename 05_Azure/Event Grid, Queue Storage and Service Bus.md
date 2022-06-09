# Event Grid, Queue Storage and Service Bus

## Key terminology
- **Event** = Things that happen
- **Event handler** = Receive info from events and act upon the events
- **FIFO** = First in, First out
- **asynchronous** = "Not using the same clock" or independent. Asynchronous processing allows different processes to be completed without being aware of one another.

## Exercise
- Study Event Grid
- Study Queue Storage
- Study Service Bus
- Learn how there service can complement eachother

### Sources
[Service Bus Explained/tutorial(youtube)](https://www.youtube.com/watch?v=kfjUSibSico)

[Azure Event Grid overview](https://docs.microsoft.com/en-us/azure/event-grid/overview)

[Azure event Grid Overview(youtube)](https://www.youtube.com/watch?v=g0jH8MEjpRM)

[Azure Queue Storage overview(youtube)](https://www.youtube.com/watch?v=_Qlkvd4ZQuo)

[Asynchronous](https://stackoverflow.com/questions/748175/asynchronous-vs-synchronous-execution-what-is-the-main-difference#:~:text=%22Asynchronous%22%20means%20%22not%20using,instructions%20relationship%20to%20the%20clock.)

### Overcome challenges

### Results

## What is Service Bus?
Several Azure services are automatically configured to handle events and Azure Service Bus is one of them. A service bus can be used for the following things:
- **Deadlettering**: If a message is not picked up due to an error, it is archived for a set period.
- **Sub Filtering**: Add additional filters so only specific Subscribers receive the message.
- **Message sessions**: Let messages be processed within a group.
- **Scheduling**: Give a set time to receive the message.
- **Detect duplicates**
- **Time to live**: Give a set time window. If the message is not received, it can be deleted from the queue.

## What is Event Grid?
The Azure Event Grid connects event sources, like resources groups, VM's, Databases etc, to event handlers at scale, so that the event handlers can initialize operations. These Event Handlers are called Subscribers. This acts like a Post office of some sorts. It takes the events as letters/packages and makes sure that the get send to the right receiver. It can be configured in numerous ways, so it operates automatically.

## What is Queue Storage?
The Queue Storage is used to send messages to a receiving end, but the receiver does not have to be "listening" or present at the time of sending. It stacks the messages in a "Fifo" manner. This allows for scalable asynchronous processing. This service acts like a mailbox in a sense.
