# Teste para vaga Backend - Inovamind

## **Desafio:**

Crie um web crawler para efetuar uma busca de frases no site <http://quotes.toscrape.com/>. As infomações vindas do crawler devem ser disponibilizadas por uma API. Esta API deve receber como parâmetro uma tag e buscar por frases que estejam classificadas de acordo com esta tag. As informações extraidas do site devem ser salvas no MongoDB que simulará um cache, onde caso a tag já tenha sido pesquisada, deverá retornar os dados persistidos previamente no banco de dados.

Ferramentas utilizadas:

* Ruby: 3.1.0

* Rails: 7.0.2

* Mongoid: 7.3.4

```ruby
gem 'mongoid' or gem install mongoid
```

</br>

Endpoints:

* Buscar os quotes por tags:

```
GET api/v1/quotes/:search_tag
```

* Buscar todos os quotes:

```
GET api/v1/quotes
```
