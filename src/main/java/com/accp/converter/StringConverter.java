package com.accp.converter;

import org.springframework.core.convert.converter.Converter;

public class StringConverter implements Converter<String,String> {
    public String convert(String s) {
        if(s!=null){
            s=s.replaceAll("<","&lt;");
            s=s.replaceAll(">","&gt;");
        }
        return s;
    }
}
