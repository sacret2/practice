package com.mar.repository;
import com.mar.domain.Timer;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = TimerRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Timer.class)
public interface TimerRepository extends DetachableJpaRepository<Timer, Long>, TimerRepositoryCustom {
}
