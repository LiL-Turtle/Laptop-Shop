package vn.lil_turtle.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.lil_turtle.laptopshop.domain.Order;
import vn.lil_turtle.laptopshop.domain.User;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long>{
    List<Order> getById(long id);

    List<Order> findByUser(User user);
}
