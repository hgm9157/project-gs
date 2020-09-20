package kr.co.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.BoardService;
import kr.co.vo.BoardVO;

@Controller
public class BoardController {

	@Inject
	BoardService service;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		model.addAttribute("list",service.list());
		logger.info("board init");
		return "/board";
		
	}

	
	// 글쓰기
	@RequestMapping(value = "/writeView", method = RequestMethod.POST)
	public void writeView() throws Exception{
		logger.info("writeView");
		
	}
	
	// 글쓰기 - 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception{
		logger.info("write");
		
		service.write(boardVO);
		
		return "redirect:/";
	}
	
	// 글 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		logger.info("list");
		
		model.addAttribute("list",service.list());
		
		
		return "redirect:/";
		
	}
	
	//글 조회
	@RequestMapping(value = "/readView", method = RequestMethod.POST)
	public String read(BoardVO boardVO, Model model) throws Exception{
		logger.info("read");
		
		model.addAttribute("read",service.read(boardVO.getBno()));
		
		
		return "viewContent";
		
	}
	
	// 글 수정화면
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(BoardVO boardVO, Model model) throws Exception{
		logger.info("updateView");
		
		model.addAttribute("update",service.read(boardVO.getBno()));
		
		return "updateView";
	}
		
	
	// 글 수정화면 - 수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardVO boardVO) throws Exception{
		logger.info("update");
		
		service.update(boardVO);
		
		return "redirect:/";
	}

	// 글 수정화면 - 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception{
		logger.info("delete");
		
		service.delete(boardVO.getBno());
		
		return "redirect:/";
	}
			
	
}
