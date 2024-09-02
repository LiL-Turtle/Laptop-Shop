package vn.lil_turtle.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.lil_turtle.laptopshop.domain.Cart;
import vn.lil_turtle.laptopshop.domain.CartDetail;
import vn.lil_turtle.laptopshop.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    boolean existsByCartAndProduct(Cart cart, Product product);

    CartDetail findByCartAndProduct(Cart cart, Product product);
}