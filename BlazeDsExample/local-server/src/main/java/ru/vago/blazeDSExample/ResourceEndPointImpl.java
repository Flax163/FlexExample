package ru.vago.blazeDSExample;

import ru.vago.blazeDSExample.dto.UserDto;

public class ResourceEndPointImpl implements ResourceEndPoint
{
    public UserDto loadUser()
    {
        return new UserDto(1, "user 1");
    }

    public UserDto loadUserById(int id)
    {
        return new UserDto(id, "user " + id);
    }
}
