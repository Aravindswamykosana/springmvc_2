package springmvc_2.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import springmvc_2.dto.User;

@Repository
public class UserCrud {
	EntityManager em = Persistence.createEntityManagerFactory("arvind").createEntityManager();
	EntityTransaction et = em.getTransaction();
	public User saveUser(User user) throws Exception{
		et.begin();
		em.persist(user);
		et.commit();
		return user;
	}
	
	public User findByEmail(String email)throws Exception {
		Query q = em.createQuery("select a from User a where a.email=?1");
		q.setParameter(1,email);
		User db =(User) q.getSingleResult();
		return db;
	}
	
	public List<User> fetchAll(){
		Query q = em.createQuery("select a from User a");
		List li = q.getResultList();
		return li;
	}
	
	public User updateUser(User user) throws Exception{
		User db = em.find(User.class, user.getId());
		if(db!=null) {
			if(db.getName()!=null) {
				db.setName(user.getName());
			}
			if(db.getEmail()!=null) {
				db.setEmail(user.getEmail());
			}
			if(db.getPwd()!=null) {
				db.setPwd(user.getPwd());
			}
			if(db.getPhone()!=0) {
				db.setPhone(user.getPhone());
			}
			if(db.getAddress()!=null) {
				db.setAddress(user.getAddress());
			}
			if(db.getSal()!=0) {
				db.setSal(user.getSal());
			}
			et.begin();
			em.merge(db);
			et.commit();
			return db;
		}
		else {
			return null;
		}	
	}
	
}
