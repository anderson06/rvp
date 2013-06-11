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

    if params[:origem_city_id]
      if params[:origem_city_id] == '0' || params[:destiny_city_id] == '0'
        flash.now[:error] = "Escolha a estação de oridem e de destino"
      else
        @nextTrains = Array.new 
        for i in 0..rand(6)
           time = rand(10) + 2
           line = rand(10)
           nextTrain = "Próximo trem em #{time} minutos na linha #{line}"
           @nextTrains << nextTrain
        end
      end      
    end
  end

  def help
  end

  def time
  end
end
