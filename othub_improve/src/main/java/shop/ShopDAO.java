package shop;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("shopdao")
public interface ShopDAO {
		
	//product 조회
	public List<ShopDTO> getProduct();
	
	
}
