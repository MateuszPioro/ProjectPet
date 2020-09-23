package com.javagda31.ProjectPet.servlet;

import com.javagda31.ProjectPet.datebase.EntityDao;
import com.javagda31.ProjectPet.model.Pet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

public class PetDeleteServlet extends HttpServlet {

    private final EntityDao<Pet> petEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         Long petId = Long.parseLong((req.getParameter("id")));

        Optional<Pet> petOptional = petEntityDao.findById(petId,Pet.class);
        if (petOptional.isPresent()){
            Pet pet = petOptional.get();
            petEntityDao.delete(pet);

            resp.sendRedirect(req.getContextPath() + "/pet/list");
        }
    }
}
