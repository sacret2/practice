package com.mar.repository;
import com.mar.entities.Showing;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = ShowingRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Showing.class)
public interface ShowingRepository extends DetachableJpaRepository<Showing, Long>, ShowingRepositoryCustom {
}
