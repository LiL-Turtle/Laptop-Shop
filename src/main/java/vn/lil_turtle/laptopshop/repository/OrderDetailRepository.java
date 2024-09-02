package vn.lil_turtle.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import vn.lil_turtle.laptopshop.domain.OrderDetail;

public interface OrderDetailRepository extends JpaRepository<OrderDetail, Long> {
    List<OrderDetail> getById(long id);
}
