<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
    </head>
    <body>
    <center>
        <h2> N11.COM - JOBAPP | Spring MVC and MongoDB | by Ömür ALÇiN </h2>

        <form name="addperson" action="person/save" method="post" id="addperson">
            <table>
                <tr>
                <input type="hidden" name="personid"/>
                <td><label for="name">First Name</label></td>
                <td><input type="text" id="name" name="name"/></td>
                </tr>
                <tr>
                    <td><label for="name">Last Name</label></td>
                    <td><input type="text" id="name" name="lastname"/></td>
                </tr>
                <tr>
                    <td><label for="name">Phone Number</label></td>
                    <td><input type="text" id="name" name="phone"/></td>
                </tr>
                <tr>
                    <td><label for="name">E-Mail</label></td>
                    <td><input type="text" id="name" name="email"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form>

        <table border="1">
            <tr>
            <b><td>First Name</td>
                <td>Last Name</td>
                <td>Telephone Num.</td>
                <td>E-Mail Adress</td>
                <td>DELETE / MERGE</td>
            </b>
            </tr>
            <c:forEach var="person" items="${personList}">

                <tr>
                    <td>${person.name}</td>
                    <td>${person.lastname}</td>
                    <td>${person.phone}</td>
                    <td>${person.email}</td>

                    <td><input type="button" value="Delete" id="deleteBtn" onclick="window.location = 'person/delete?id=${person.id}'"/>
                        <input type="button" value="Merge" id="editBtn" onclick="window.location = 'person/merge?name=${person.name}'"/></td>

                </tr>
            </c:forEach>
        </table>
    </center>
</body>
</html>