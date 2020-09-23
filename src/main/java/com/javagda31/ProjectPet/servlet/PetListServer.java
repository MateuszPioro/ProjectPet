package com.javagda31.ProjectPet.servlet;

import com.javagda31.ProjectPet.datebase.EntityDao;
import com.javagda31.ProjectPet.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/pet/list")
public class PetListServer extends HttpServlet {

    private final EntityDao<Pet> petEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Pet> petList = petEntityDao.findAll(Pet.class);

        req.setAttribute("lista_Zwierzakow", petList);

        req.getRequestDispatcher("/pet_list.jsp").forward(req,resp);

    }
}
