package com.aesop.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aesop.domain.CategoryVO;
import com.aesop.domain.Inventory;
import com.aesop.per.InventoryMapper;

@Service
public class InventoryService implements InventoryBiz{
	
	@Autowired
	private InventoryMapper inventoryDAO;

	@Override
	public int getTotalCount() {
		return inventoryDAO.getTotalCount();
	}

	@Override
	public List<Inventory> getInventoryList() {
		return inventoryDAO.getInventoryList();
	}

	@Override
	public List<CategoryVO> categoryLoading(String category) {
		return inventoryDAO.categoryLoading(category);
	}

	@Override
	public Inventory getInventory(int pno) {
		return inventoryDAO.getInventory(pno);
	}

	@Override
	public void insInventory(Inventory inventory) {
		inventoryDAO.insInventory(inventory);
	}

	@Override
	public void upInventory(Inventory inventory) {
		inventoryDAO.upInventory(inventory);
	}

	@Override
	public void delInventory(int ino) {
		inventoryDAO.delInventory(ino);
	}
	
}
