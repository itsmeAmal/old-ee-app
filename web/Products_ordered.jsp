<%-- 
    Document   : delivery_info
    Created on : Feb 12, 2017, 6:24:26 PM
    Author     : 4m4l
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Info</title>


        <script type="text/javascript">
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange = function() {
                window.location.hash = "no-back-button";
            }
        </script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        

    </head>
    <body>
        <div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;">
            <div  class="table container" style="position: absolute; left: 10%; top: 20%; width: 80%; height: 100%; ">
                <table class="table table-responsive" >
                    <tr>

                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Brand</th>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Model</th>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Qty</th>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Total</th>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Action</th>
              

                    </tr>



                    <%
                        Session ses = conn.connector.getSessionFactory().openSession();
                        Criteria cr = ses.createCriteria(pojos.PaymentHistory.class);
                        List<pojos.PaymentHistory> lst = cr.list();
                        if (lst.size() > 0) {
                            for (pojos.PaymentHistory lh : lst) {

                    %>

                    <form method="POST" action="#" >
                        <tr class="table-condensed">
                            <td><%= lh.getCardType() %></td>
                            <td><%= lh.getCustName() %></td>
                            <td><%= lh.getAdd1() %></td>
                            <td><%= lh.getAdd2() %></td>
                           
                            <td>
                                <input class="btn btn-danger"  type="submit" name="btn-33" value="Deliver"/>
                                <input type="hidden" name="btn3" value="<%= lh.getId() %>"/>
                           </td>
                           
                           
                           
                            
                        </tr>
                    </form>
                    <%                                                out.write("</tr>");
                            }

                        }
                    %>







                </table>


            </div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </body>
</html>
