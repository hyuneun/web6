package pack;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Testjstal")
public class Testjstal extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String irum = "마당쇠";
		request.setAttribute("man", irum);
		
		Person person = new Person();//사실은 init에서 생성
		person.setName("한쿡인");
		request.setAttribute("person", person);
		
		Student student = new Student();
		student.setAge(50);
		request.setAttribute("student", student);
		
		//문자열
		String[] ani = {"말","강쥐","괭이"};
		request.setAttribute("animal", ani);
		
		String[] food = {"삼겹살","피자","치킨","짬뽕","짜장면"};
		List<Object> list = new ArrayList<>();
		list.add(ani);
		list.add(food);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("testjstal.jsp").forward(request, response);
	}

}
