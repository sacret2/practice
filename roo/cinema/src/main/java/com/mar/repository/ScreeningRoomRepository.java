package com.mar.repository;
import com.mar.entities.ScreeningRoom;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ScreeningRoomRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = ScreeningRoom.class)
public interface ScreeningRoomRepository extends DetachableJpaRepository<ScreeningRoom, Long>, ScreeningRoomRepositoryCustom {
}
