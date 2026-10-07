<!DOCTYPE html>
<html>
<head>
    <title>Data User</title>
</head>

<body>

<center>

    <h2>Data User</h2>

    <p>
        Authorized users can search the encrypted data stored in the cloud.
    </p>

    <hr>

    <h3>Search Encrypted Data</h3>

    <form action="search.jsp" method="post">

        <table>

            <tr>
                <td>Username:</td>
                <td>
                    <input type="text" name="username" required>
                </td>
            </tr>

            <tr>
                <td>Keyword:</td>
                <td>
                    <input type="text" name="keyword" required>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Search">
                </td>
            </tr>

        </table>

    </form>

    <br>

    <a href="owner.jsp">Go to Data Owner</a>
    <br><br>
    <a href="index.jsp">Home</a>

</center>

</body>
</html>