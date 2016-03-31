package br.com.testeDoMercado.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.sun.javafx.image.impl.ByteIndexed.Getter;
import com.sun.management.jmx.TraceNotification;

import br.com.testeDoMercado.modelo.Negociacao;

@Repository
public class NegociacaoDao implements NegociacaoDaoInterface {

	@PersistenceContext
	EntityManager manager;
	
	/**Lista todos os Registros
	 * 
	 * @return Retorna todos valores da tabela
	 */
	public List<Negociacao> listaNegociacao() {
		return manager.createQuery("select t from Negociacao t").getResultList();
	}

	/** adiciona uma nova Compra
	 * 
	 * @param negocia
	 *            Negociacao - Recebe uma negociação
	 */
	public void adicionaCompra(Negociacao negocia) {
		manager.persist(negocia);
	}

	/**ALtera uma Lista
	 * 
	 * @param negocia
	 *            Negociacao - Recebe uma negociação
	 */
	@Override
	public void alteraNegociacao(Negociacao negocia) {
		manager.merge(negocia);
	}

	/** Remove um negociação
	 * 
	 * @param negocia
	 *            Negociacao - Recebe uma negociação
	 */
	@Override
	public void removeNegociacao(Negociacao negocia) {
		Negociacao negociaRemover = buscaPorId(negocia.getCodigoDaMercadoria());
		manager.remove(negociaRemover);
	}

	/**Faz uma busca somente por ID
	 * 
	 * @param negocia
	 *            Negociacao - Recebe uma negociação
	 */
	@Override
	public Negociacao buscaPorId(long t) {
		return manager.find(Negociacao.class, t);

	}

}
