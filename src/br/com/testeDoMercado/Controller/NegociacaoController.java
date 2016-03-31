package br.com.testeDoMercado.Controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.testeDoMercado.dao.*;
import br.com.testeDoMercado.modelo.Negociacao;

@Transactional
@Controller
public class NegociacaoController {

	@Autowired
	NegociacaoDao dao;

	/**
	 * 
	 * @return a Pagina Home.jsp
	 */
	@RequestMapping("home")
	public String loginForm() {
		return "home";
	}

	/**Metodo para adicionar uma negociação no BD
	 * 
	 * @param negocia
	 *            Negociacao - todos os valores do Formulário home.jsp
	 * @return retorna para uma confrmação que foi cadastrado
	 */
	@RequestMapping("adicionaNegociacao")
	public String adicionaCompra(@Valid Negociacao negocia, BindingResult result) {
		if (result.hasErrors())
			System.out.println(result);
		dao.adicionaCompra(negocia);

		return "Cadastrado";
	}
	/**Metodo para recuperar as negociações atravez do Dao.
	 * 
	* @param model
	 *            Model - Objeto para pegar o Adributonda pagina recebida
	 * @return retorna para Pagina Lista Negociacao
	 */
	@RequestMapping("listaNegociacao")
	public String lista(Model model) {

		model.addAttribute("negocia", dao.listaNegociacao());
		return "listaNegociacao";
	}

	/**Metodos para remover a um registo completo do BD
	 * 
	 * @param negocia
	 *            Negociacao - Valores do ID selecionado na listaNegociacao.jsp
	 * @return redireciona para a listanegociacao.jsp e Remove o valor
	 */
	@RequestMapping("removeNegociacao")
	public String remove(Negociacao negocia) {

		dao.removeNegociacao(negocia);
		return "redirect:listaNegociacao";
	}

	/**
	 * 
	 * @param negocia
	 *            Negociacao - Valores do ID selecionado na listaNegociacao.jsp
	 * @return  retorna para pagina de alterar Cadastro
	 */
	@RequestMapping("alterandoCadastro")
	public String altera(Negociacao negocia) {

		dao.alteraNegociacao(negocia);
		return "alteraCadastro";
	}

	/**Metodo que recupera os dados da lista e encaminha para outra pagina de alteração
	 * 
	 * @param codigoDaMercadoria
	 *            long - Recebe o Id por atributo
	 * @param model
	 *            Model - Objeto para pegar o Adributonda pagina recebida
	 * @return retorna para Pagina de Altera Cadastro
	 */

	@RequestMapping("mostraNegocia")
	public String mostra(long codigoDaMercadoria, Model model) {

		model.addAttribute("negocia", dao.buscaPorId(codigoDaMercadoria));
		return "alteraCadastro";
	}

}
