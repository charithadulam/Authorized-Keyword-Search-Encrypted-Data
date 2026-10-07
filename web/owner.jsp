<!DOCTYPE html>
<html>
<head>
    <title>Data Owner</title>
</head>

<body>

<center>

    <h2>Data Owner</h2>

    <p>
        The Data Owner uploads data to the cloud in encrypted form.
    </p>

    <hr>

    <h3>Upload / Encrypt Data</h3>

    <form action="owner.jsp" method="post">

        <table>

            <tr>
                <td>File / Data Name:</td>
                <td>
                    <input type="text" name="filename" required>
                </td>
            </tr>

            <tr>
                <td>Keyword:</td>
                <td>
                    <input type="text" name="keyword" required>
                </td>
            </tr>

            <tr>
                <td>Data:</td>
                <td>
                    <textarea name="data" rows="8" cols="40" required></textarea>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Encrypt & Store">
                </td>
            </tr>

        </table>

    </form>

    <br>

    <a href="user.jsp">Go to Data User</a>
    <br><br>
    <a href="index.jsp">Home</a>

</center>

</body>
</html>