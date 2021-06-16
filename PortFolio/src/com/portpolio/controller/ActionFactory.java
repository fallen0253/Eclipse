package com.portpolio.controller;

import com.portpolio.controller.action.Action;
import com.portpolio.controller.action.CheckFormAction;
import com.portpolio.controller.action.JoinAction;
import com.portpolio.controller.action.JoinFormAction;
import com.portpolio.controller.action.LoginFormAction;

public class ActionFactory {
	
	private ActionFactory() {};
	
	private static ActionFactory instance = new ActionFactory();
	
	public static ActionFactory getInstane() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		
		System.out.println("command :" + command);
		
		if(command.equals("portfolio_login_form")) {
			action = new LoginFormAction();
		}else if(command.equals("portfolio_join_form")) {
			action = new JoinFormAction();
		}else if(command.equals("portfolio_join")) {
			action = new JoinAction();
		}else if(command.equals("portfolio_check_form")) {
			action = new CheckFormAction();
		}
		
		return action;
	}
}
