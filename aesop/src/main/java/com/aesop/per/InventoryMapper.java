package com.aesop.per;

import java.util.List;

import com.aesop.domain.CategoryVO;
import com.aesop.domain.Inventory;

public interface InventoryMapper {
	public int getTotalCount();
	public List<Inventory> getInventoryList();
	public List<CategoryVO> categoryLoading(String category);
	public Inventory getInventory(int ino);
	public void insInventory(Inventory inventory);
	public void upInventory(Inventory inventory);
	public void delInventory(int ino);
}
