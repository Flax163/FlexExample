package ru.vago.blazeDSExample.dto
{
    [RemoteClass(alias="ru.vago.blazeDSExample.dto.UserDto")]
    public class UserDto
    {
        public var id:int;
        public var name:String;

        public function toString():String
        {
            return "id: " + id + ", name:" + name;
        }
    }
}
