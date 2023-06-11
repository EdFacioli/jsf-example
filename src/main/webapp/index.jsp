<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
    <form id="jspForm">
            <input type="number" name="x" />
            <input type="number" name="y" />
        <input type="submit" value="Somar" />
    </form>
    <br>
    <p id="resultado"></p>

    <script>
        const form = document.getElementById("jspForm");
        const resultado = document.getElementById("resultado");

        form.addEventListener('submit', ev => {
            ev.preventDefault();

            const formData = "x="+form.x.value+"&y="+form.y.value;

            fetch("hello-servlet", {
                method: 'POST',
                body: formData,
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                }
            })
                .then(response => {
                    if (response.ok) {
                        return response.body.getReader().read();
                    }
                })
                .then(responseText => {
                    resultado.innerText = String.fromCharCode.apply(null, responseText.value);
                })
                .catch(error => {
                    resultado.innerText = error.message;
                });


        });

    </script>
</body>
</html>