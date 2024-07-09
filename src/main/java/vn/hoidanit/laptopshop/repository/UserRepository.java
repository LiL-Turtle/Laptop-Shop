package vn.hoidanit.laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.hoidanit.laptopshop.domain.User;
import java.util.List;

//Crud: Create, read, update, delete
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User baothien);

    List<User> findByEmail(String email);
}
