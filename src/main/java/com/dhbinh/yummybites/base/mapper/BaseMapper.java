package com.dhbinh.yummybites.base.mapper;

import java.util.List;

public interface BaseMapper<E, D> {

    D toDTO(E entity);

    List<D> toDTOList(List<E> entityList);

    E toEntity(D DTO);

    List<E> toEntityList(List<D> DTOList);
}