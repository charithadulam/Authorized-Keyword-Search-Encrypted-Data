<!DOCTYPE html>
<html>
<head>
    <title>Authorized Keyword Search - Login</title>
</head>

<body>

<center>

    <h2>Authorized Keyword Search Over Encrypted Data</h2>

    <h3>Login</h3>

    <form action="user.jsp" method="post">

        <table>

            <tr>
                <td>Username:</td>
                <td>
                    <input type="text" name="username" required>
                </td>
            </tr>

            <tr>
                <td>Password:</td>
                <td>
                    <input type="password" name="password" required>
                </td>
            </tr>

            <tr>
                <td>User Type:</td>
                <td>
                    <select name="role" required>
                        <option value="">-- Select --</option>
                        <option value="Owner">Data Owner</option>
                        <option value="User">Data User</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <br>
                    <input type="submit" value="Login">
                </td>
            </tr>

        </table>

    </form>

    <br>

    <a href="index.jsp">Back to Home</a>

</center>

</body>
</html>