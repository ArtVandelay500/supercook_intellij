package com.vandelay.app.infra.service;

import com.vandelay.app.infra.dto.MemberDTO;
import com.vandelay.app.infra.repository.MemberRepository;
import com.vandelay.app.infra.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.lang.reflect.Member;
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

    public MemberDTO selectOne(MemberDTO dto) {
        return memberRepository.selectOne(dto);
    }

    public int update(MemberDTO dto) {
       return memberRepository.update(dto);
    }

    public int insert(MemberDTO dto) {
       return memberRepository.insert(dto);
    }

    public int delete(MemberDTO dto) {
        return memberRepository.delete(dto);
    }


    public MemberDTO selectOneAJAX(MemberVo vo) {
        return memberRepository.selectOneAJAX(vo);
    }


    public int selectOneCheckId(MemberVo vo) {
        return memberRepository.selectOneCheckId(vo);
    }

}
