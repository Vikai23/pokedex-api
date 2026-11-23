package com.vinicius.pokedex_api.repository;

import com.vinicius.pokedex_api.entity.EliteFourMember;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EliteFourMemberRepository extends JpaRepository<EliteFourMember, Long> {

    // Os 4 membros de uma geração, na ordem em que são enfrentados
    List<EliteFourMember> findByGenerationOrderByPositionAsc(Integer generation);
}
