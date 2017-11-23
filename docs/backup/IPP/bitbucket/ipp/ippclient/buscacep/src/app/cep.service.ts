import { Injectable } from '@angular/core';
import { Http } from '@angular/http';

import { Cep } from './cep';

import 'rxjs/add/operator/toPromise';

@Injectable()
export class CepService {

  constructor(private http: Http) { }

  buscar(cep: string) {
    return this.http.get(`http://viacep.com.br/ws/${cep}/json`)
      .toPromise()
      .then(response => {
          return this.converterRespostaParaCep(response.json());
      });
  }

  private converterRespostaParaCep(cepNaResposta): Cep {
    let cep = new Cep();
    cep.cep = cepNaResposta.cep;
    cep.logradouro = cepNaResposta.logradouro;
    cep.numero = cepNaResposta.numero;
    cep.complemento = cepNaResposta.complemento;
    cep.bairro = cepNaResposta.bairro;
    cep.localidade = cepNaResposta.localidade;
    cep.uf = cepNaResposta.uf;
    return cep;
}

}