package com.aesop.per;

import java.util.List;


import com.aesop.domain.Sales;

public interface SalesMapper {
	public int getTotalCount();
	public List<Sales> getAllSalesList();
	public List<Sales> getStSalesList(String st);
	public List<Sales> getDelstSalesList(String delStatus);
	public List<Sales> getPnoSalesList(int pno);
	public List<Sales> getSalesList(String id);
	public Sales getSales(int sno);
	public void insSales(Sales sales);
	public void upSales(Sales sales);
	public void upDelivery(Sales sales);
	public void completeDelivery(Sales sales);
	public void delSales(int sno);
}
