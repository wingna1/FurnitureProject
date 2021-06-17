package profile.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import profile.dao.ProfileDAO;

@Service
public class ProfileServiceImpl implements ProfileService {
	@Autowired
	ProfileDAO profileDAO;

}
