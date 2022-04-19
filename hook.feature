@ignore
Feature: Hook

    @criarUsuarioComId
    Scenario: Criar pet com id
        * def payload = read("payloadCriacaoPet.json")
        Given url baseUrl + "/pet"
        And request payload
        When method post
        Then status 200

    @criarUsuarioSemId
    Scenario: Criar pet
        * def petId = 0
        * def payload = read("payloadCriacaoPet.json")
        Given url baseUrl + "/pet"
        And request payload
        When method post
        Then status 200