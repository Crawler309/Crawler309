package org.zjicm.crawler.action;

import java.util.Map;

import org.zjicm.crawler.vo.AdministratorUser;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {
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

	private Integer id;
	private String username;
	private String password;

	public String index() {
		return SUCCESS;
	}

	public String left() {
		Map session = ActionContext.getContext().getSession();

		String s_username = (String) session.get("UserName");
		setUsername(s_username);
		return SUCCESS;
	}

	public String top() {

		Map session = ActionContext.getContext().getSession();

		String s_username = (String) session.get("UserName");
		setUsername(s_username);

		return SUCCESS;
	}

}
