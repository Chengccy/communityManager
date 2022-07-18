package com.shnk.controller;

import com.shnk.service.CompanyService;
import com.shnk.service.impl.CompanyServiceImpl;

import javax.servlet.http.HttpServlet;

public class TestServlet extends HttpServlet {
    private CompanyService companyService=new CompanyServiceImpl();


}
