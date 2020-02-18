<%@ page import="domain.model.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="domain.model.Student" %>

<%
    Student greetje = new Student("Jongen", "Greetje", "Toegepaste Informatica", 23);
    Student kristien = new Student("Melaerts", "Kristien", "Chemie", 21);
    Student elke = new Student("Steegmans", "Elke", "Vroedkunde", 16);
    Student jan = new Student("Van Hee", "Jan", "Verpleegkunde", 18);

    ArrayList<Student> students = new ArrayList<Student>();
    students.add(greetje);
    students.add(kristien);
    students.add(elke);
    students.add(jan);

    %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>domain.model.Student Info: Overzicht</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<table>
    <thead>
    <tr>
        <th>Naam</th>
        <th>Voornaam</th>
        <th>Leeftijd</th>
        <th>Studierichting</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Janssens</td>
        <td>Jan</td>
        <td>24</td>
        <td>Toegepaste Informatica</td>
    </tr>
    </tbody>

        <%  for(Student s: students) {%>

    <tr>
        <td><%=s.getNaam()%></td>
        <td><%=s.getVoornaam()%></td>
        <td><%=s.getLeeftijd()%></td>
        <td><%=s.getStudierichting()%></td>
    </tr>

        <% }%>






</table>

</body>
</html>
