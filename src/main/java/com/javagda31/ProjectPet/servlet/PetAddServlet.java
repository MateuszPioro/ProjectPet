package com.javagda31.ProjectPet.servlet;

import com.javagda31.ProjectPet.datebase.EntityDao;
import com.javagda31.ProjectPet.model.Owner;
import com.javagda31.ProjectPet.model.Pet;
import com.javagda31.ProjectPet.model.Race;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.parser.Entity;
import java.awt.*;
import java.io.IOException;
import java.util.List;
import java.util.Optional;


@WebServlet("/pet/form")
public class PetAddServlet extends HttpServlet {

    private final EntityDao<Pet> petEntityDao = new EntityDao<>();
    private final EntityDao<Owner> ownerEntityDao = new EntityDao<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String ownerIdString = req.getParameter("ownerId");
        if (ownerIdString != null) {
            req.setAttribute("ownerId", ownerIdString);
        }

        List<Owner> ownerList = ownerEntityDao.findAll(Owner.class);
        req.setAttribute("all_owners", ownerList);

        Race[] allRace = Race.values();
        req.setAttribute("all_race", allRace);

        req.getRequestDispatcher("/pet_form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long ownerId = Long.valueOf(req.getParameter("ownerIdValue"));

        Optional<Owner> ownerOptional = ownerEntityDao.findById(ownerId, Owner.class);
        if (ownerOptional.isPresent()) {
            Owner owner = ownerOptional.get();


            Pet pet = Pet.builder()
                    .agePet(Integer.parseInt(req.getParameter("ageValue")))
                    .name(req.getParameter("nameValue"))
                    .weight(Double.parseDouble(req.getParameter("weightValue")))
                    .pureRace(req.getParameter("pureRaceValue") != null && req.getParameter("pureRaceValue").equals("on"))
                    .race(Race.valueOf(req.getParameter("raceValue")))
                    .owner(owner)
                    .build();

            petEntityDao.saveOrUpdate(pet);
        }
        resp.sendRedirect(req.getContextPath() + "/owner/details?id=" + ownerId);
    }
}
