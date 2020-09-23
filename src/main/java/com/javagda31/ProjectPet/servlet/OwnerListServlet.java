package com.javagda31.ProjectPet.servlet;


import com.javagda31.ProjectPet.datebase.EntityDao;
import com.javagda31.ProjectPet.model.Owner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/owner/list")
public class OwnerListServlet extends HttpServlet {

    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Owner> ownerList = ownerEntityDao.findAll(Owner.class);

        req.setAttribute("JakasListaWlascicieli", ownerList);

        req.getRequestDispatcher("/owner_list.jsp").forward(req,resp);

    }
}
