package com.example.demopublic;

import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @RequestMapping("/test")
    public String getTest(){
        return "success!!!";
    }
    @RequestMapping("/")
    public String getTest2(){
        return "hello bro !!!";
    }
}
