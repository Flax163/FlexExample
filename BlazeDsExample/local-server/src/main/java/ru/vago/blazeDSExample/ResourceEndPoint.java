package ru.vago.blazeDSExample;

import ru.vago.blazeDSExample.dto.UserDto;

public interface ResourceEndPoint
{
    UserDto loadUser();

    UserDto loadUserById(int id);
}
