package br.com.qintess.web.form2.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.com.qintess.web.form2.entidades.Pergunta;

@Repository
public interface PerguntaDAO extends CrudRepository<Pergunta, Integer> {
	
	@Query(value = "select * from pergunta order by id", nativeQuery = true)
	List<Pergunta> buscaPerguntasOrdenado();

}
