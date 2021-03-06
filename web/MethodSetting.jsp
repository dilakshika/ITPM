
<%@page import="com.itpm.model.SizeVariableMetod"%>
<%@page import="com.itpm.controller.MethodController"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Set Weight</title>
           <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="css/button.css"  >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  >
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>

        
<div class="row" style="margin-top: 20px; margin-right: 0px; float: left; margin-bottom: 10px">
    <div class="col-md-1"></div> 
    <div class="col-md-10">
        <div class="card" style="width: 600px; height: 460px;" >
            <center><div class="card-heading p-2"><h4>Weights related to the method factor</h4></div></center>
            <div class="card-body" >
                <form action="UpdateMethod" method="POST">
                <div class="table-responsive-sm" >
                    <center><table class="table table-bordered" style="width: 500px;">
                            <thead>
                                <tr>
                                    <th scope="col">program Component</th>
                                    <th scope="col">Weight</th>
                                </tr>
                            </thead>
                            <tbody>
                                 <%
                                    MethodController method = new MethodController();
                                    ArrayList<SizeVariableMetod> maccounts = method.getmethod();
                                    for (SizeVariableMetod account : maccounts) {
                                %>
                                
                                <tr>
                                    <td id="labl<%=account.getId()%>"><%=account.getProgramComponent()%></td>
                                    <td><center><input type="text" id="<%=account.getId()%>" name="<%=account.getId()%>" style="width: 50px; text-align: center;" value="<%=account.getWeight()%>"></center></td>
                            </tr>
                             <%
                                }
                            %>
                          
                            </tbody>
                        </table></center>
                </div>



                <button class="buttonsave button5">Save</button>
                </form>
            </div>
        </div>


    </div> 
    <div class="col-md-1"></div> 
</div>
</div>
</div>

</body>
</html>
