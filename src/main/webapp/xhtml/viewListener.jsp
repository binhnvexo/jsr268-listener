<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>

<%@page import="org.exoplatform.portlet.ContactInfoBean"%>

<portlet:defineObjects/>
 
<h1>Hello world!</h1>
 
<%!ContactInfoBean contactInfo = null;%>
<%
//retrieve the object from the session
contactInfo = (ContactInfoBean) request.getAttribute("contactInfo");
 
if (contactInfo != null) {
 
%>
    <div>
        <table>
        <tbody>
            <tr>
                <th>Name:</th>
                <td><%=contactInfo.getName() %></td>
            </tr>
            <tr>
                <th>Email:</th>
                <td><%=contactInfo.getEmail() %></td>
            </tr>
        </tbody>
        </table>
    </div>
<% } else {
    %><p>No contact information.</p><%
}
%>
<h1>Hello</h1>
<br>
<h2><%=contactInfo.getName()%></h2>