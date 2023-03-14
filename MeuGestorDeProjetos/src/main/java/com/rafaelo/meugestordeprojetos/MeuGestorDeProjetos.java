/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.rafaelo.meugestordeprojetos;

import controller.ProjectController;
import java.util.List;
import model.Project;

/**
 *
 * @author Rafael
 */
public class MeuGestorDeProjetos {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        
        //teste
        ProjectController projectController = new ProjectController();;
        Project project = new Project();
        project.setName("Projeto teste");
        project.setDescription("description");
        //projectController.save(project);
        
        project.setId(3);
        project.setName("Novo nome do projeto");
        //projectController.update(project);
        projectController.removeById(3);
        //List<Project> projects = projectController.getAll();
        //System.out.println("Total de projetos = " + projects.size());
        
        
    }
}
