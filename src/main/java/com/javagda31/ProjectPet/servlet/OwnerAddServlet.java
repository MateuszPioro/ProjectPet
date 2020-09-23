package com.javagda31.ProjectPet.servlet;

import com.javagda31.ProjectPet.datebase.EntityDao;
import com.javagda31.ProjectPet.model.Owner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/owner/form")
public class OwnerAddServlet extends HttpServlet {

    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/owner_form.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Owner owner  = Owner.builder()
                .firstName(req.getParameter("firstNameValue"))
                .lastName(req.getParameter("lastNameValue"))
                .age(Integer.parseInt(req.getParameter("ageValue")))
                .build();

        ownerEntityDao.saveOrUpdate(owner);

        resp.sendRedirect(req.getContextPath() + "/owner/form");

    }
}
