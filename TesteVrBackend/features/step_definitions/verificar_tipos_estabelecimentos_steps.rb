# encoding: utf-8
require 'httparty'
require 'json'

Dado("que eu faço uma requisição para o endpoint de tipos de estabelecimentos") do
  @response = HTTParty.get("https://portal.vr.com.br/api-web/comum/enumerations/VRPAT")
  expect(@response.code).to eq(200)
end

Então("eu devo receber uma resposta que contém a chave {string}") do |chave|
  json_response = JSON.parse(@response.body)
  expect(json_response).to have_key(chave)
end

E("eu imprimo um tipo de estabelecimento aleatoriamente") do
  json_response = JSON.parse(@response.body)
  type_of_establishment = json_response["typeOfEstablishment"]
  puts type_of_establishment.sample
end
