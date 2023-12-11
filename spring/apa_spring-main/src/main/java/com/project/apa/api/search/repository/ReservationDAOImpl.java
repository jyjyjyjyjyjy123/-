package com.project.apa.api.search.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.apa.api.search.model.HospitalDoctorDTO;
import com.project.apa.mapper.ReservationMapper;

@Repository
public class ReservationDAOImpl implements ReservationDAO {
	@Autowired
	private ReservationMapper mapper;

	@Override
	public List<HospitalDoctorDTO> finddeptdoc(HospitalDoctorDTO dto) {
		return mapper.finddeptdoc(dto);
	}
}
