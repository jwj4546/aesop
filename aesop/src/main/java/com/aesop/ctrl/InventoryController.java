package com.aesop.ctrl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aesop.biz.InventoryBiz;
import com.aesop.domain.Inventory;

@Controller
@RequestMapping("/inventory/")
public class InventoryController {

	private static final Logger log = LoggerFactory.getLogger(InventoryController.class);
	
	@Autowired
	private InventoryBiz inventoryService;
	
	@RequestMapping("listAll.do")
	public String getInventoryList(Model model) {
		model.addAttribute("list", inventoryService.getInventoryList());
		return "inventory/list";
	}
	
	@RequestMapping("list.do")
	public String categoryLoading(@RequestParam("category") String category, Model model) {
		model.addAttribute("list", inventoryService.categoryLoading(category));
		return "inventory/list";
	}
	
	@RequestMapping("detail.do")
	public String getInventory(@RequestParam("ino") int ino, Model  model) {
		model.addAttribute("inventory", inventoryService.getInventory(ino));
		return "inventory/get";
	}
	
	@GetMapping("insert.do")
	public String insInventory(Inventory inventory, Model model) {
		return "product/insert";
	}
	
	@PostMapping("insertPro.do")
	public String insInventoryPro(Inventory inventory, Model model) {
		inventoryService.insInventory(inventory);
		return "redirect:/inventory/listAll.do";
	}
	
	@GetMapping("upInventory.do")
	public String upInventory(@RequestParam("ino") int ino, Model model) {
		model.addAttribute("dto", inventoryService.getInventory(ino));
		return "inventory/edit";
	}
	
	@PostMapping("upInventoryPro.do")
	public String upInventoryPro(Inventory inventory, Model model) {
		inventoryService.upInventory(inventory);
		return "redirect:inventoryList.do";
	}
	
	@RequestMapping("delInventory.do")
	public String delInventory(@RequestParam("ino") int ino, Model model) {
		inventoryService.delInventory(ino);
		return "redirect:listAll.do";
	}
}
