package report;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.project.othub.NaverInform;

import comment.CommentDTO;
import comment.CommentService;
import community.CommunityDTO;
import community.CommunityService;
import member.MemberService;
import member.couponDTO;
import pose.ColorDTO;
import pose.ObjectService;
import pose.PoseService;
import product.ProductDTO;
import product.ProductServiceImpl;

@Controller
public class ReportController {
	@Autowired
	@Qualifier("commuservice")
	CommunityService commuserive;
	
	@Autowired
	@Qualifier("memberservice")
	MemberService memberservice;
	
	@Autowired
	@Qualifier("commentservice")
	CommentService commentservice;
	
	@Autowired
	@Qualifier("poseservice")
	PoseService poseservice;
	
	@Autowired
	@Qualifier("productservice")
	ProductServiceImpl productservice;
	
	@Autowired
	@Qualifier("objectservice")
	ObjectService objectservice;
	
	
		//게시물 신고하기
		@RequestMapping("report")
		public ModelAndView report(int s_seq) {
			CommunityDTO oneCommu = new CommunityDTO();
			oneCommu = commuserive.oneCommunity(s_seq);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("writer",oneCommu.getS_writer());
			mv.addObject("title",oneCommu.getS_title());
			mv.setViewName("community/report");
			return mv;
		}
		@RequestMapping("reportss")
		public void reportss(String report){
			System.out.println(report);
		}

	
}