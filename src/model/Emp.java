/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author renuka
 */
public class Emp {
    
    public ArrayList<Employee>product;
    
    public Emp(){
        this.product = new ArrayList<Employee>();
        
    }

    public ArrayList<Employee> getProduct() {
        return product;
    }

    public void setProduct(ArrayList<Employee> product) {
        this.product = product;
    }
    public Employee addNewEmployee(){
        Employee newEmployee=new Employee();
        product.add(newEmployee);
        return newEmployee;
        
    }

    public void deleteEmployees(Employee e){
        product.remove(e);
    }

    public Employee updateEmployee() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Employee updateNewEmployee() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
