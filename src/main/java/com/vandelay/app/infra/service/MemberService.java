package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public int save(MemberDTO dto) {
        return memberRepository.save(dto);
    }

    public List<MemberDTO> selectList() {
        return memberRepository.selectList();
    }
}
