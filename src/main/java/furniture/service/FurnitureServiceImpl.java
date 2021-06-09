package furniture.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import furniture.dao.FurnitureDAO;

@Service
public class FurnitureServiceImpl implements FurnitureService {
	@Autowired
	private FurnitureDAO furnitureDAO;
	
	
}
