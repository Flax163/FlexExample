package ru.vago.blazeds.example.dto;

import java.io.Serializable;

public class UserDto implements Serializable
{
    public int id;

    public UserDto(int id,
                   String name)
    {
        this.id = id;
        this.name = name;
    }

    public UserDto() {}

    public String name;
}
