package br.net.ipp.daos.aprendizes;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.net.ipp.models.aprendizes.Contratacao;
import br.net.ipp.models.aprendizes.Jovem;

public interface ContratacaoRepository extends PagingAndSortingRepository<Contratacao, Long> {
	List<Contratacao> findAllByJovem(Jovem jovem);
	Contratacao findByJovem(Jovem jovem);
}
