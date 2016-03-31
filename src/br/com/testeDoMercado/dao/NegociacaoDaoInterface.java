package br.com.testeDoMercado.dao;

import java.util.List;

import br.com.testeDoMercado.*;
import br.com.testeDoMercado.modelo.Negociacao;;

public interface NegociacaoDaoInterface {



	List<Negociacao> listaNegociacao();

	void adicionaCompra(Negociacao t);
	


	void alteraNegociacao(Negociacao t);

	void removeNegociacao(Negociacao t);

	Negociacao buscaPorId(long t);

	
	
}
