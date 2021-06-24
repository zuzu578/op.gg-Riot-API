package com.myopgg.myopggapp.utils;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import org.springframework.util.StringUtils;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;

public class IdForNameUtil {

	public List<String> ChangeName(JsonArray freeChampionIds) {
		Gson gson = new Gson();
		List<String> nameList = new ArrayList<String>();
		
		if ( freeChampionIds != null ) {
			
			Type type = new TypeToken<List<String>>(){}.getType();
		    List<String> contactList = gson.fromJson(freeChampionIds, type);
		    
		    for ( String idx : contactList ) {
		    	String chgName = "";
		    	if ( StringUtils.pathEquals("3", idx) ) {
		    		chgName = "Galio";
		    	} else if ( StringUtils.pathEquals("6", idx) ) {
		    		chgName = "Urgot";
		    	} else if( StringUtils.pathEquals("23", idx)) {
		    		chgName = "Tryndamere";
		    	} else if ( StringUtils.pathEquals("40", idx)) {
		    		chgName = "Janna";
		    	} else if ( StringUtils.pathEquals("50" ,idx)) {
		    		chgName ="Swain";
		    	} else if ( StringUtils.pathEquals("59", idx)) {
		    		chgName = "JarvanIV";
		    	} else if ( StringUtils.pathEquals("69", idx)) {
		    		chgName = "Cassiopeia";
		    	} else if ( StringUtils.pathEquals("74", idx)) {
		    		chgName = "Heimerdinger";
		    	} else if ( StringUtils.pathEquals("96", idx)) {
		    		chgName = "KogMaw";
		    	} else if ( StringUtils.pathEquals("106", idx)) {
		    		chgName = "Volibear";
		    	} else if ( StringUtils.pathEquals("119", idx)) {
		    		chgName = "Draven";
		    	} else if ( StringUtils.pathEquals("143", idx)) {
		    		chgName = "Zyra";
		    	} else if ( StringUtils.pathEquals("154", idx)) {
		    		chgName = "Zac";
		    	} else if ( StringUtils.pathEquals("163", idx)) {
		    		chgName = "Lillia";
		    	} else if ( StringUtils.pathEquals("245", idx)) {
		    		chgName = "Ziggs";
		    	} 
		    	nameList.add(chgName);
		    }
		}
		
		return nameList;
	}
}
