package ru.vago.blazeds.example;

import ru.vago.blazeds.example.dto.UserDto;

public interface ResourceEndPoint
{
    UserDto loadUser();

    UserDto loadUserById(int id);
}
