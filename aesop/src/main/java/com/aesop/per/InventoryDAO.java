package com.aesop.per;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aesop.domain.CategoryVO;
import com.aesop.domain.Inventory;

@Repository
public class InventoryDAO implements InventoryMapper {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int getTotalCount() {
		return sqlSession.selectOne("inventory.getTotalCount");
	}

	@Override
	public List<Inventory> getInventoryList() {
		return sqlSession.selectList("inventory.getInventoryList");
	}

	@Override
	public Inventory getInventory(int ino) {
		return sqlSession.selectOne("inventory.getInventory", ino);
	}
	

	@Override
	public List<CategoryVO> categoryLoading(String category) {
		return sqlSession.selectList("inventory.categoryLoading", category);
	}

	@Override
	public void insInventory(Inventory inventory) {
		sqlSession.insert("inventory.insInventory", inventory);
	}

	@Override
	public void upInventory(Inventory inventory) {
		sqlSession.update("inventory.upInventory", inventory);
	}

	@Override
	public void delInventory(int ino) {
		sqlSession.delete("inventory.delInventory", ino);
	}
	
}