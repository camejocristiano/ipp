package br.net.ipp.daos.aprendizes;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.net.ipp.models.aprendizes.AvaliacaoPITEPIP;
import br.net.ipp.models.aprendizes.Jovem;

public interface AvaliacaoPITEPIPRepository extends PagingAndSortingRepository<AvaliacaoPITEPIP, Long> {
	List<AvaliacaoPITEPIP> findAllByJovem(Jovem jovem);
}