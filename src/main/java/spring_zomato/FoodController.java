package spring_zomato;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Query;

@Controller
public class FoodController {
	@Autowired
	private EntityManager em;

	@RequestMapping("/save")
	public ModelAndView save(@RequestParam String name, @RequestParam String description, @RequestParam String category,
			@RequestParam String type, @RequestParam double price, @RequestParam double rating,
			@RequestParam String image) {

		Food f = new Food(0, name, description, category, type, price, rating, image);

		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(f);
		et.commit();
		ModelAndView mv = new ModelAndView();
		mv.addObject("name", name);
		mv.addObject("description", description);
		mv.addObject("category", category);
		mv.addObject("type", type);
		mv.addObject("price", price);
		mv.addObject("rating", rating);
		mv.addObject("image", image);

		System.out.println("Food details added successfully");
		mv.setViewName("index.jsp");

		mv.addObject(mv);

		return mv;
	}

	@RequestMapping("/all")
	public ModelAndView view() {
		javax.persistence.Query q = em.createQuery("from Food");
		List<Food> fl = q.getResultList();

		ModelAndView mv = new ModelAndView("allfood.jsp");
		mv.addObject("fl", fl);
		return mv;
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam int id) {

		Food f = em.find(Food.class, id);
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.remove(f);
		et.commit();
		System.out.println("item removed");

		return "redirect:/all";
	}

	@RequestMapping("/update")
	public ModelAndView updateform(@RequestParam int id) {

		Food f = em.find(Food.class, id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatepage.jsp");
		mv.addObject("food", f);
		return mv;
	}

	@RequestMapping("/updatepage")
	public String update(@RequestParam int id, @RequestParam String name, @RequestParam String description,
			@RequestParam String category, @RequestParam String type, @RequestParam double rating,
			@RequestParam double price, @RequestParam String image) {

		Food f = em.find(Food.class, id);

		f.setName(name);
		f.setDescription(description);
		f.setCategory(category);
		f.setImage(image);
		f.setPrice(price);
		f.setRating(rating);
		f.setType(type);

		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(f);
		et.commit();
		System.out.println("food items updated");

		return "redirect:/all";

	}
}
