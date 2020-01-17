package br.com.qintess.web.form2.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.qintess.web.form2.dao.PerguntaDAO;
import br.com.qintess.web.form2.entidades.Pergunta;

@Controller
@RequestMapping("/pergunta")
public class PerguntaController {
	
	@Autowired
	private PerguntaDAO dao;
	
	@RequestMapping("")
	public String carrega(Model model) {
		model.addAttribute("perguntas", dao.buscaPerguntasOrdenado());
		model.addAttribute("pergunta", new Pergunta());
		
		return "pergunta";
	}
	
	@RequestMapping("/salva")
	public String salva(@ModelAttribute Pergunta pergunta) {
		
			dao.save(pergunta);
		
			return "redirect:/index";
	}
	
	@RequestMapping("/altera/{id}")
	public String carregaAltera(@PathVariable int id, Model model) {
		model.addAttribute("perguntas", dao.buscaPerguntasOrdenado());
		model.addAttribute("pergunta", dao.findById(id).get());
		
		return "pergunta";
	}
	
	@RequestMapping("/deleta/{id}")
	public String deleta(@PathVariable int id) {
		
		dao.deleteById(id);
		
		return "redirect:/pergunta";
	}
	
	@RequestMapping("/cancela/{id}")
	public String cancela(@PathVariable int id) {
		
		return "redirect:/pergunta";
	}
	
}
