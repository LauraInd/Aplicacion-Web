<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Fogones Ibéricos</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>

<%
    HttpSession currentSession = request.getSession();
    String role = "anonymous";
    int userId = 0;
    if (currentSession.getAttribute("role") != null) {
        role = currentSession.getAttribute("role").toString();
    }
    if (currentSession.getAttribute("id") != null) {
        userId = Integer.parseInt(currentSession.getAttribute("id").toString());
    }
%>

<body>
<header data-bs-theme="dark">
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="/parque" class="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
                <strong>Fogones Ibéricos</strong>
            </a>
            <%
                if (role.equals("anonymous")) {
            %>
            <a title="Iniciar sesión"></a>
            <%
                } else {
            %>
            <a href="logout" title="Cerrar sesión"></a>
            <%
                }
            %>
        </div>
    </div>
</header>