package com.accp.controller;

import com.accp.biz.RoomBiz;
import com.accp.entity.Room;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/Main")
public class Main {

	@Resource
	private RoomBiz roomBiz;

	@RequestMapping("/main")
	public String main(){
		return "main/main";
	}

	@RequestMapping("/todata")
	public String viewData(Model model){
		model.addAttribute("list",roomBiz.selectRoom());
		return "main/datatable";
	}


}
