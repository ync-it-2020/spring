package kr.ync.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.BoardVO;
import kr.ync.domain.Criteria;
import kr.ync.domain.GameDetailsVO;
import kr.ync.domain.GameListVO;
import kr.ync.domain.PageDTO;
import kr.ync.domain.SignupVO;
import kr.ync.service.BoardService;
import kr.ync.util.SteamJSONParse;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class SampleController {
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private BoardService service;

//	@GetMapping("/register")
//	@PreAuthorize("isAuthenticated()")
//	public void register() {
//
//	}
	
	@GetMapping("gamelist")
	public void gamelist(Model model) {
		log.info("gamelist");
		model.addAttribute("gamelist", service.getGameList());
	}
	
	@GetMapping("gamedetails")
	public void gamedetails(@RequestParam("appids") Long appids, Model model) {
		log.info("gamelistInDetails");
		log.info("gamedetails");
		model.addAttribute("gamedetails", service.getGameDetails(appids));
		model.addAttribute("gamelist", service.getGameListInDetails());
	}
	
	@GetMapping("gamedetails_new")
	public void gamedetails_new(@RequestParam("appids") Long appids, Model model) {
		log.info("gamelistInDetails");
		log.info("gamedetails");
		model.addAttribute("gamedetails", service.getGameDetails(appids));
		model.addAttribute("gamelist", service.getGameListInDetails());
		SteamJSONParse.steamJSONParse(appids);
		System.out.println(SteamJSONParse.steamJSONParse(appids));
	}
	
	@GetMapping("newslist")
	public void newslist(Model model) {
		log.info("newslist");
		model.addAttribute("newslist", service.getNewsList());
	}
	
	@GetMapping("news")
	public void news(@RequestParam("content_idx") Long content_idx, Model model) {
		log.info("news");
		model.addAttribute("news", service.getNews(content_idx));
	}
	
	@GetMapping("/admin_gameupload")
	public void admin_gameupload() {
		
	}
	
	@PostMapping("/admin_gameupload")
	public String admin_gameupload(MultipartFile[] uploadFile, GameListVO gamelist, RedirectAttributes rttr) {
		//MultipartFile[]
//		String imagePath = "resources\\images\\gf_game\\";
//		int index = 0;
//		for (MultipartFile multipartFile : uploadFile) {
//			if(multipartFile.getSize() > 0) {
//				switch (index) {
//				case 0:
//					gamelist.setThumbnail(UploadUtils.uploadFormPost(multipartFile, imagePath));
//					break;
//				case 1:
//					gamelist.setThumbnail(UploadUtils.uploadFormPost(multipartFile, imagePath));
//					break;
//				default:
//					gamelist.setThumbnail(UploadUtils.uploadFormPost(multipartFile, imagePath));
//					break;
//				}
//			}
//			index++;
//		}
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
					gamelist.setThumbnail(UploadUtils.uploadFormPost(multipartFile, uploadPath));
			}
		}
		
		log.info("register: " + gamelist);

		service.uploadGame(gamelist);

		//rttr.addFlashAttribute("result", gamelist.getBno());

		return "redirect:/front/gamelist";
	}
	
	
	@PostMapping("/admin_gameremove")
	public String admin_gameremove(@RequestParam("appids") Long appids, GameListVO gamelist, RedirectAttributes rttr) {

		log.info("remove..." + appids);
		String path = service.getGameDetails(appids).getThumbnail();
		System.out.println(path);
		
		path = path.replace("../../../resources/upload/", "");
		System.out.println(path);
		path = uploadPath.replace("\\", "/") + "/" + path;
		System.out.println(path);
		if (service.removeGame(appids)) {
			File file = new File(path);
			if(file.exists()) {
				if (file.delete()) {
					System.out.println("파일 삭제 성공");
				} else {
					System.out.println("파일 삭제 실패");
				}
			} else {
				System.out.println("파일 없음");
			}
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/front/gamelist";
	}
	
	@GetMapping("/admin_gamemodify")
	public void admin_gamemodify() {
		
	}
	

	
	
//	@GetMapping("/gamelist")
//	public void gamelist() {
//		
//	}
	
//	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("about")
	public void about() {
		
	}
//	@GetMapping("news")
//	public void news() {
//		
//	}
	
	
	@GetMapping("single")
	public void single() {
		
	}
	@GetMapping("contact")
	public void contact() {
		
	}
//	@GetMapping("login")
//	public void login() {
//		
//	}
	
	@GetMapping("signup")
	public void signup() {
		
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {

		log.info("list: " + cri);
		
		// 게시판의 글은 지속적으로 등록, 삭제 되기에 매번 list를 호출 할때 total을 구해와야 한다. 
		int total = service.getTotal(cri);
		log.info("total: " + total);
		model.addAttribute("list", service.getListWithPaging(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));

	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/register")
	public String register(MultipartFile[] uploadFile, BoardVO board, RedirectAttributes rttr) {
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			if(multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					board.setFile_1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					board.setFile_2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					board.setFile_3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
			}
			index++;
		}
		
		log.info("register: " + board);

		service.register(board);

		rttr.addFlashAttribute("result", board.getBno());

		return "redirect:/admin/list";
	}

	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {

		log.info("/get or modify");
		model.addAttribute("board", service.get(bno));
	}

	@PreAuthorize("principal.username == #board.writer")
	@PostMapping("/modify")
	public String modify(MultipartFile[] uploadFile, BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);
		
		int index = 0;
		for (MultipartFile multipartFile : uploadFile) {
			// 실제로 upload된 file이 있을때만 upload 시킨다.
			if (multipartFile.getSize() > 0) {
				switch (index) {
				case 0:
					board.setFile_1(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				case 1:
					board.setFile_2(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				default:
					board.setFile_3(UploadUtils.uploadFormPost(multipartFile, uploadPath));
					break;
				}
			}
			index++;
		}

		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/list" + cri.getListLink();
	}

	@PreAuthorize("principal.username == #writer")
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr, String writer) {

		log.info("remove..." + bno);
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}

		return "redirect:/admin/list" + cri.getListLink();
	}

}
