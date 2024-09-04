package vn.lil_turtle.laptopshop.service.specification;

import java.util.List;

import org.springframework.data.jpa.domain.Specification;

import vn.lil_turtle.laptopshop.domain.Product;
import vn.lil_turtle.laptopshop.domain.Product_;

/**
 * ProductSpec
 */
public class ProductSpecs {
    public static Specification<Product> nameLike(String name) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Product_.NAME), "%" + name + "%");
    }

    public static Specification<Product> minPrice(double minPrice) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.greaterThanOrEqualTo(root.get(Product_.PRICE),
                minPrice);
    }

    public static Specification<Product> maxPrice(double maxPrice) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.lessThanOrEqualTo(root.get(Product_.PRICE), maxPrice);
    }

    public static Specification<Product> factory(String factoryOptional) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(Product_.FACTORY), factoryOptional);
    }

    public static Specification<Product> listFactory(List<String> factoryOptional) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.in(root.get(Product_.FACTORY)).value(factoryOptional);
    }

    public static Specification<Product> price(double min, double max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.and(
                criteriaBuilder.gt(root.get(Product_.PRICE), min),
                criteriaBuilder.lt(root.get(Product_.PRICE), max));
    }

    public static Specification<Product> listPrice(double min, double max) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.between(root.get(Product_.PRICE), min, max);
    }

}