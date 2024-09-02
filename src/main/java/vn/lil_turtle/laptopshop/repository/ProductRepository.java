package vn.lil_turtle.laptopshop.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.lil_turtle.laptopshop.domain.Product;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    Product save(Product baothien);

    List<Product> findAll();

    Product findById(long id);

    Page<Product> findAll(Pageable page);

}
