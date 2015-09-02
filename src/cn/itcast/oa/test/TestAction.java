package cn.itcast.oa.test;

import java.io.Console;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
//import org.springframework.stereotype.Service;
//import org.springframework.stereotype.Component;
//import org.springframework.stereotype.Repository;




import com.google.common.collect.Maps;
import com.lob.client.AsyncLobClient;
import com.lob.client.LobClient;
import com.lob.protocol.request.AddressRequest;
import com.lob.protocol.request.LetterRequest;
import com.lob.protocol.response.AddressResponse;
import com.lob.protocol.response.LetterResponse;
import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.oa.domain.Information;
import cn.itcast.oa.domain.SaveData;

import com.lob.examples.*;
@Controller
@Scope("prototype")
public class TestAction extends ActionSupport {
	
	private static final long serialVersionUID = 6531332631159332192L;

	@Resource
	private TestService testService;

	private Information information;
	
	private Information info = new Information();

	@Override
	public String execute() throws Exception {
		System.out.println(information.toString());
		System.out.println(information.getCity());
		
		CreateLetter cl = new CreateLetter();
		cl.createletter(information);
		
		SaveData sd = new SaveData();
		sd.savedata(information);
		
		return "success";
		
		
	}

	public Information getInformation() {
		return information;
	}

	public void setInformation(Information information) {
		this.information = information;
	}
	
}
