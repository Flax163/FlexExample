package ru.vago.blazeds.example.endpoint
{
    import mx.messaging.ChannelSet;
    import mx.messaging.channels.AMFChannel;
    import mx.rpc.AbstractOperation;
    import mx.rpc.AsyncToken;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    import mx.rpc.remoting.RemoteObject;

    public class ResourceEndPointImpl implements ResourceEndPoint
    {
        private var remoteObject:RemoteObject;

        public function ResourceEndPointImpl()
        {
            remoteObject = new RemoteObject();
            remoteObject.destination = "ResourceEndPoint";
            const channelSet:ChannelSet = new ChannelSet();
            channelSet.addChannel(new AMFChannel("amf-channel", "http://localhost:8080/messagebroker/amf"));
            remoteObject.channelSet = channelSet;
        }

        public function loadUser(resultEvent:Function, faultEvent:Function):AsyncToken
        {
            const operation:AbstractOperation = remoteObject.getOperation("loadUser");
            operation.addEventListener(ResultEvent.RESULT, resultEvent);
            operation.addEventListener(FaultEvent.FAULT, faultEvent);
            return operation.send();
        }

        public function loadUserById(id:int, resultEvent:Function, faultEvent:Function):AsyncToken
        {
            const operation:AbstractOperation = remoteObject.getOperation("loadUserById");
            operation.addEventListener(ResultEvent.RESULT, resultEvent);
            operation.addEventListener(FaultEvent.FAULT, faultEvent);
            return operation.send(id);
        }
    }
}
