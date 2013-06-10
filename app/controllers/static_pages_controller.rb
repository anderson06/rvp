# encoding: UTF-8
class StaticPagesController < ApplicationController
  def home
  	stations = [
  		['Central do Brasil', 1],
  		['Praça da Brandeira', 2],
  		['São Cristovão', 3],
  		['Maracanã', 4],
  		['Mangueira', 5],
  		['São Francisco Xavier', 6],
  		['Riachuelo', 7],
  		['Sampaio', 8],
  		['Engenho Novo', 9],
  		['Méier', 10],
  		['Engenho de Dentro', 11],
  		['Piedade', 12],
  		['Quintino', 13],
  		['Cascadura', 14],
  		['Madureira', 15],
  		['Oswaldo Cruz', 16],
  		['Pref. Bento Ribeiro', 17],
  		['Marechal Hermes', 18],
  		['Deodoro', 19],
  		['Magalhães Bastos', 21],
  		['Realengo', 22],
  		['Padre Miguel', 23],
  		['Guilherme da Silveira', 24],
  		['Bangu', 25],
  		['Senador Camará', 26],
  		['Santíssimo', 27],
  		['Augusto Vasconcelos', 28],
  		['Campo Grande', 29],
  		['Benjamim do Monte', 30],
  		['Inhoaíba', 31],
  		['Cosmos', 32],
  		['Paciência', 33],
  		['Trancredo Neves', 34],
  		['Santa Cruz', 35]
  	]
  	@origem = stations.clone
  	@origem.unshift(['Origem', 0])
  	@destiny = stations.clone
  	@destiny.unshift(['Destino', 0])
  end

  def help
  end

  def time
  end
end
