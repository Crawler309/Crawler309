package org.zjicm.crawler.action;

import java.util.Map;

import org.zjicm.crawler.service.IUserService;
import org.zjicm.crawler.vo.AdministratorUser;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private Integer id;
	private String username;
	private String password;
	protected IUserService userService;
	private AdministratorUser user;
	private AdministratorUser updateuser;

	public AdministratorUser getUser() {
		return user;
	}

	public void setUser(AdministratorUser user) {
		this.user = user;
	}

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String login() throws Exception {

		Boolean b = userService.login(user);
		if (b == true) {
			Map session = ActionContext.getContext().getSession();
			session.put("UserName", user.getUsername());
			return "success_login";
		} else {

			return "login_error";
		}
	}

	public String getById() throws Exception {

		
		return "success_getById";

	}

	public String updatepassword() throws Exception {

		boolean b = userService.updatePassword(updateuser);
		if (b)
			return "success_update";
		else
			return "error_update";
	}

	public String logout() throws Exception {

		Map session = ActionContext.getContext().getSession();
		session.remove("UserName");
		return "success_logout";

	}

}
