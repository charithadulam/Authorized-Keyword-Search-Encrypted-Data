<!DOCTYPE html>
<html>
<head>
    <title>Search Encrypted Data</title>
</head>

<body>

<center>

    <h2>Authorized Keyword Search</h2>

    <hr>

    <h3>Search Result</h3>

    <%
        String username = request.getParameter("username");
        String keyword = request.getParameter("keyword");

        if (username != null && keyword != null) {
    %>

        <p>
            User: <b><%= username %></b>
        </p>

        <p>
            Requested Keyword: <b><%= keyword %></b>
        </p>

        <p>
            Search request has been received.
        </p>

        <p>
            The cloud server would perform the authorized
            keyword search over the encrypted data.
        </p>

    <%
        } else {
    %>

        <p>No search request was received.</p>

    <%
        }
    %>

    <br>

    <a href="user.jsp">Back to Data User</a>
    <br><br>

    <a href="index.jsp">Home</a>

</center>

</body>
</html>