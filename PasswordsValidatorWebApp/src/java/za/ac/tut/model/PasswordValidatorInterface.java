/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model;

/**
 *
 * @author Gift Mashiya
 */
public interface PasswordValidatorInterface {
 public int THRESHOLD = 2;
 public int MINIMUM_LENGTH=8;
 public boolean isPasswordValid(String pswd);
}
