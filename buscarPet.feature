Feature: Buscar pet

    Scenario: Buscar pet com sucesso
        * def petId = 242526
        * def nomePet = "Cachorro"
        * def responseCriacaoPet = call read("hook.feature@criarUsuarioComId")

        Given url baseUrl + "/pet"
        And path responseCriacaoPet.response.id
        When method get
        Then status 200
        And match response == responseCriacaoPet.response

    Scenario: Buscar pet dois
        * def petId = java.lang.System.currentTimeMillis()
        * def nomePet = "Pet número " + java.util.UUID.randomUUID()
        * def responseCriacaoPet = call read("hook.feature@criarUsuarioComId")

        Given url baseUrl + "/pet"
        And path responseCriacaoPet.response.id
        When method get
        Then status 200
        And match response == responseCriacaoPet.response

    Scenario: Buscar pet tres
        * def petId = java.lang.System.currentTimeMillis()
        * def nomePet = "Pet número " + java.util.UUID.randomUUID()
        * def responseCriacaoPet = call read("hook.feature@criarUsuarioComId")

        Given url baseUrl + "/pet"
        And path responseCriacaoPet.response.id
        When method get
        Then status 200
        And match response == responseCriacaoPet.response
