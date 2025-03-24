<%@page import="model.dto.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Listagem</title>
    
    <link href="../css/style.listar.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
    <header>
    <h1>Listagem dos contatos</h1>
    <nav>
        <a href="cadastrar_page.jsp">Novo contato</a>
        <a href="../index.html">Sair</a>
    </nav>
</header>

    
    <section class="lista-contatos">
        <%
            ClienteDAO objClienteDAO = new ClienteDAO();
            ArrayList<Cliente> l = objClienteDAO.listarClientes();

            for (Cliente cliente : l) {
        %>
        
        <form class="contato" method="POST" action="processar_contato.jsp">
            <input type="hidden" name="id" value="<%= cliente.getId() %>">           
            <p><strong>Nome:</strong> <%= cliente.getNome() %></p>
            <p><strong>Telefone:</strong> <%= cliente.getTelefone() %></p>
            <p><strong>CPF:</strong> <%= cliente.getCpf() %></p>
            <p><strong>Email:</strong> <%= cliente.getEmail()%></p>

            <div class="botoes">
                <button type="submit" name="acao" value="alterar" class="botao">Alterar</button>
                <button type="submit" name="acao" value="excluir" class="botao">Excluir</button>
            </div>
        </form>

        <% } %>
    </section>

</body>
</html>
