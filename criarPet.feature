Feature: Criação de pet

    Scenario: Criar pet
        * def petId = 0
        * def nomePet = "Caramelo doce"
        * def payload = read("payloadCriacaoPet.json")
        Given url baseUrl + "/pet"
        And request payload
        When method post
        Then status 200