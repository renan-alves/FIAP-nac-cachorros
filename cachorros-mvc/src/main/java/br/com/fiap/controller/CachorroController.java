package br.com.fiap.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.CachorroModel;
import br.com.fiap.repository.CachorroRepository;

@Controller
@RequestMapping("/cachorro")
public class CachorroController {
	
	CachorroRepository repository = CachorroRepository.getInstance();
	
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("cachorroModel") CachorroModel cachorroModel, 
					   Model model) {
		
		if("cachorro-editar".equals(page)) {
			model.addAttribute("cachorroModel", repository.findById(id));
		}
		
		return page;
	}

	@GetMapping()
	public String findAll(Model model) {

		model.addAttribute("cachorros", repository.findAll());
		return "cachorros";
	}

	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("cachorro", repository.findById(id));
		return "cachorro-detalhe";//MUDAR DPS
	}
	
	@PostMapping()
	public String save(@Valid CachorroModel cachorroModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "cachorro-novo";
		}
		
		repository.save(cachorroModel);
		redirectAttributes.addFlashAttribute("messages", "Cachorro cadastrado com sucesso!");
		
		return "redirect:/cachorro";
	}
	
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid CachorroModel cachorroModel, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "cachorro-editar";
		}
		
		cachorroModel.setId(id);
		repository.update(cachorroModel);
		redirectAttributes.addFlashAttribute("messages", "Cadastro de cachorro alterado com sucesso!");
		
		return "redirect:/cachorro";
	}
	
	@DeleteMapping("/{id}")
	public String deleteById(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		repository.deleteById(id);
		redirectAttributes.addFlashAttribute("messages", "Cachorro excluído com sucesso! Esperamos que ele tenha sido adotado :)");

		return "redirect:/cachorro";
	}

}
