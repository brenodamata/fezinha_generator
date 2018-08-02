require "fezinha_generator/version"
require "nokogiri"
require 'open-uri'

module FezinhaGenerator

  def self.fezinha aposta=nil
    tamanho_da_fe = aposta.nil? ? 6 : aposta

    fezinha = []
    while fezinha.size < tamanho_da_fe do
      bola = rand(1..60)
      fezinha << bola unless fezinha.include?(bola)
    end
    fezinha.sort
  end

  def self.fezinha_to_s aposta=nil
    self.fezinha(aposta).join(" ")
  end

  def self.resultado
    get_results[:concurso][:numeros_sorteados].join("  ")
  end

  protected

    def self.get_results
      doc = Nokogiri::HTML(open("http://developers.agenciaideias.com.br/loterias/megasena/json"))
      string = doc.children.children.children.children.first.content
      eval(string)
    end
end
