describe('Teste de automação no site VR', () => {
  it('Acessar o site VR e verificar o mapa do Google', () => {
    // Acessar o site www.vr.com.br
    cy.visit('https://www.vr.com.br');
    
    // Ajuste os valores conforme necessário
    cy.viewport(1920, 1080); 

    // Aceitar termo de privacidade
    cy.contains('Aceitar termo de privacidade').click();

    // Navegar até a seção "Pra Você"
    cy.contains('Sou Trabalhador').click();

    // Navegar até a seção "Onde usar meu cartão VR"
    cy.contains('Onde usar meu cartão VR').click();

    // Validar que o mapa do Google abriu em tela
    cy.get('#mapSection').should('be.visible');
  });
});
  