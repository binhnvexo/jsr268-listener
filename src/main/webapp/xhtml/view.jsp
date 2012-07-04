<%@page import="org.exoplatform.portlet.ContactInfoBean"%>

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