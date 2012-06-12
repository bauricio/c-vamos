require 'mechanize'
url = 'http://www.tse.jus.br/sadEleicaoDivulgaCand2008/gerenciarregistrocandidatura/manterCandidato!listarCandidatosPorMunicipio.action?codigoUESelec=88013&codigoCargoEletivoSelec=11&codigoSituacaoRegistro=12'

candidate_link_criteria = /mostrarRegistroCandidatura/

agent = Mechanize.new
page = agent.get url

page.links_with(:href => candidate_link_criteria).each do |link|
  p link.text  
end
