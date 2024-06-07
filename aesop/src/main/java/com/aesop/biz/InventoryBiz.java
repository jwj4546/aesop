package com.aesop.biz;

import java.util.List;

import com.aesop.domain.CategoryVO;
import com.aesop.domain.Inventory;

public interface InventoryBiz {
	int getTotalCount();
	List<Inventory> getInventoryList();
	List<CategoryVO> categoryLoading(String category);
	Inventory getInventory(int pno);
	void insInventory(Inventory inventory);
	void upInventory(Inventory inventory);
	void delInventory(int ino);
}
