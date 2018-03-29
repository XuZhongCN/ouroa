package com.yyq.oa.utils;


import java.io.IOException;
import java.util.List;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.yyq.oa.pojo.BaseJson;

public class JsonUtils {
	
	private static final ObjectMapper OBJECT_MAPPER=new ObjectMapper();
	/**
	 * 将对象转成json
	 * @param object
	 * @return
	 */
	public static String objectToJson(Object object) {
		try {
			String json = OBJECT_MAPPER.writeValueAsString(object);
			return json;
		} catch (JsonProcessingException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 将json转成普通对象
	 * @param json
	 * @param type
	 * @return
	 */
	public static <T> T jsonToObject(String json,Class<T> type ) {
		try {
			T t = OBJECT_MAPPER.readValue(json, type);
			return t;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/*
	 * 将json转成list集合
	 */
	public static<T> List<T> jsonToList(String json,Class<T> valueType){
		try {
			JavaType javaType = OBJECT_MAPPER.getTypeFactory().constructParametricType(List.class, valueType);
			List<T> list = OBJECT_MAPPER.readValue(json, javaType);
			return list;
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		BaseJson baseJson =new BaseJson();
		baseJson.setCode(1111111);
		baseJson.setData("这是内部的内容");
		BaseJson baseJson2=BaseJson.setOK(baseJson);
		String json = objectToJson(baseJson2);
		System.err.println(json);
		System.err.println(jsonToObject(json, BaseJson.class));
		
	}
}
