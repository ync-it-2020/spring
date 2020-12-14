package kr.ync.controller;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ync.domain.SignupAuthVO;
import kr.ync.domain.SignupVO;
import kr.ync.service.BoardService;
import kr.ync.service.SignupService;
import kr.ync.util.UploadUtils;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/front/*")
public class MemberController {
    
//    @Inject
//    private SignupService signupService;
//    
//    //SignUp GET
//    @RequestMapping(value="/signup", method=RequestMethod.GET)
//    public void signupGET() {
//        
//    }
//    
//    //SignUp PSOT
//        @RequestMapping(value="/signup", method=RequestMethod.POST)
//        public String signupPOST(SignupVO signVO) {
//            
//            signupService.insertMember(signVO);
//            
//            return "index";
//        }
	
	@Value("${globalConfig.uploadPath}")
	private String uploadPath;
	
	@Autowired
	private SignupService service;
	
	@Autowired
	private PasswordEncoder pwencoder;
	
	@PostMapping("/signup")
	public String signup(SignupVO signup, SignupAuthVO signupAuth, RedirectAttributes rttr) {
//		for (MultipartFile multipartFile : uploadFile) {
//			if(multipartFile.getSize() > 0) {
//				signup.setImage(UploadUtils.uploadFormPost(multipartFile, uploadPath));
//			}
//		}
		signup.setPassword(pwencoder.encode(signup.getPassword()));
		System.out.println("" + signup);
		log.info("register: " + signup);

		service.signup(signup);
		service.signupAuth(signupAuth);

		//rttr.addFlashAttribute("result", gamelist.getBno());

		return "redirect:/front/gamelist";
	}
    
    
    
}

