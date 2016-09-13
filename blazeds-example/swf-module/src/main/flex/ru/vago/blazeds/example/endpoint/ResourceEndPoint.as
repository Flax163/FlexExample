package ru.vago.blazeds.example.endpoint
{
    import mx.rpc.AsyncToken;

    public interface ResourceEndPoint
    {
        function loadUser(resultEvent:Function, faultEvent:Function):AsyncToken;

        function loadUserById(id:int, resultEvent:Function, faultEvent:Function):AsyncToken;
    }
}
