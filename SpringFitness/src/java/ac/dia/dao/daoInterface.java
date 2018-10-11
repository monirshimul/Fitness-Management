/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ac.dia.dao;

import java.util.List;

/**
 *
 * @author Muiduzzaman Lipu
 */
public interface daoInterface<T> {
    List<T> getAll();
    T get(int id);
    boolean save(T value);
    boolean update(T value);
    boolean delete(int id);
}
