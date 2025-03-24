<%@page import="model.dao.ClienteDAO"%>
<%@page import="model.dto.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
        <link href="../css/style.listar.css" rel="stylesheet" type="text/css"/>
       <script>
    setTimeout(function() {
        window.location.href = "../view/listar_page.jsp"; // Redireciona após 3 segundos
    }, 3000);
</script>

    </head>
    <body>
        <h1>Cadastrado com sucesso!</h1>
        <%
            
            Cliente objCliente = new Cliente();
            objCliente.setNome(request.getParameter("n_nome"));
            objCliente.setTelefone(request.getParameter("n_telefone"));
            objCliente.setCpf(request.getParameter("n_cpf"));
            objCliente.setEmail(request.getParameter("n_email"));

            ClienteDAO objClienteDAO = new ClienteDAO();
            objClienteDAO.cadastrarClientes(objCliente);
        %>
    </body>
</html>
