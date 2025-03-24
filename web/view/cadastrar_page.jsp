

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CADASTRO DE CLIENTES</title>
        
        <link href="../css/style.cadastro.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
      <h1 class="mensagem">Preencha os campos a seguir:</h1>

        <form action="../controller/cadastrar.jsp">
            <label>Nome: <input type="text" name="n_nome" required></label>
            <label>Telefone: <input type="text" name="n_telefone" required></label>
            <label>CPF: <input type="text" name="n_cpf" required></label>
            <label>E-mail: <input type="text" name="n_email" required></label>
            
            <input type="submit" value="Cadastrar">
            <a href="listar_page.jsp">Cancelar</a>
        </form>
    </body>
</html>
