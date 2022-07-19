package in.co.online.food.delivery.ctl;

import java.io.ByteArrayInputStream;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.xml.crypto.Data;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import in.co.online.food.delivery.dto.CartDTO;
import in.co.online.food.delivery.dto.UserDTO;
import in.co.online.food.delivery.exception.DuplicateRecordException;
import in.co.online.food.delivery.form.CartForm;
import in.co.online.food.delivery.service.CartServiceInt;
import in.co.online.food.delivery.service.ProductServiceInt;
import in.co.online.food.delivery.util.DataUtility;

@Controller
@RequestMapping("/manageAccount")
//@WebServlet("/manageAccount")
public class ForgetPassword extends HttpServlet
{
 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
 {
	res.setContentType("text/html"); 
	PrintWriter pw=res.getWriter();
	pw.println("<h1>Welcome</h1>");
//	res.sendRedirect(''); 
 } 
 }