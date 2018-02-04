package br.net.ipp.daos.aprendizes;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.net.ipp.models.aprendizes.AvaliacaoPAPEmpresa;
import br.net.ipp.models.aprendizes.Jovem;

public interface AvaliacaoPAPEmpresaRepository extends PagingAndSortingRepository<AvaliacaoPAPEmpresa, Long> {
	List<AvaliacaoPAPEmpresa> findAllByJovem(Jovem jovem);
}
