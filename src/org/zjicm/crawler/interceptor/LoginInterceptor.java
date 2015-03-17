package org.zjicm.crawler.interceptor;

import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.zjicm.crawler.vo.AdministratorUser;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {

		// 在调用action方法之前
		String actionName = arg0.getProxy().getActionName();
		//System.out.println("Action :" + actionName + "之前执行");
		String methodName = arg0.getProxy().getMethod();
		//System.out.println("methodName:" + methodName);

		HttpServletRequest request = ServletActionContext.getRequest();
		// 获取请求的url地址
		String actionURL = request.getRequestURI().toString();
		//System.out.println("actionURL:" + actionURL);

		if (actionURL.endsWith("/User_login.action")) {
			// 如果是这个的话，说明用户还在登陆，此时就不要使用拦截器，否则用户连登陆都没完成就被拦截了
			return arg0.invoke();

		}

		ActionContext ctx = arg0.getInvocationContext();
		Map session = ctx.getSession();
		String username = (String) session.get("UserName");

		if (null == username || username.equals("null")) {
			return Action.ERROR;
		} else {
			return arg0.invoke();

		}

	}
}
