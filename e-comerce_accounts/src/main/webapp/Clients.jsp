<%-- 
    Document   : Clients
    Created on : 18 avr. 2020, 21:27:42
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">  
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.css">  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        
          <sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver"
           url="jdbc:mysql://sql2.freemysqlhosting.net:3306/sql2333478" user="sql2333478" password="xC1*lT2%" />  
        
        
    </head>    
    <style>   
    </style>               
    <body>  
           <sql:query var="users" dataSource="${dbSource}"> 
                  select* from Client;
                  </sql:query> 
  
        <div class="container mb-3 mt-3">  
               
            <table class="table table-striped table-bordered table-sm mydatatable" style="width: 100%"> 
                <thead>  
                     <tr> 
                        <th>ID</th> 
                        <th>Nom</th> 
                        <th>Prenom</th> 
                        <th>Email</th> 
                        <th>Adress</th> 
                        <th>Password</th>  
                      
                        <th>Action</th>
                   </tr>
                </thead> 
                <tbody> 
              <c:forEach var="row" items="${users.rows}"> 
                  <tr><td><c:out value="${row.id}" /></td> <td><c:out value="${row.nom}" /></td> 
                      <td><c:out value="${row.prenom}" /></td><td><c:out value="${row.email}" /></td>
                      <td><c:out value="${row.adresse}" /></td><td><c:out value="${row.password}" /></td>
             <!--         <td><a  type="button" class="btn btn-danger"  href="javascript:confirmGo('Do you want to block this user ?','block.jsp?id=<c:out value="${row.id}"/>')">Block</a></td></tr> -->  
                      <td><a  type="button" class="btn btn-danger" href="javascript:toAlertModal('block.jsp?id=<c:out value="${row.id}"/>')"  data-toggle="modal" data-target="#myModal">BLOCK</a> 
                          <a type="button"   data-toggle="modal" data-target="#myModal1"   class="btn btn-info" >Update</a>
                      </td>   
                   
                      <!-- Alert of Blocking confirmation for each user -->
                             
         <div id="myModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>				
				<h4 class="modal-title">Are you sure?</h4>	
                          
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<p>Do you really want to block this account.</p>
			</div>
			<div class="modal-footer">
			                    <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
		
                                            <a  id="block"href="block.jsp?id=<c:out value="${row.id}"/>" type="button" class="btn btn-danger">Block</a>
			</div>
		               </div>
	                               </div>
     
         </div>       
              
              <!-- update --> 
               <div id="myModal1" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>				
				<h4 class="modal-title">Update Account</h4>	
                          
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
			
                            <form> 
                                                                            
                                                                                <div class="form-group">
                                                                                    <input type="text" name="nom" value="" class="text-center"/> 
                                                        
                                                                                </div> 
                                                                                       <div class="form-group">
                                                                                    <input type="text" name="nom" value="" /> 
                                                        
                                                                                </div> 
                                                                                        <div class="form-group">
                                                                                    <input type="text" name="nom" value="" /> 
                                                         
                                                                                </div> 
                                                                                        <div class="form-group">
                                                                                    <input type="text" name="nom" value="" /> 
                                                         
                                                                                </div> 
                                                                                        <div class="form-group">
                                                                                    <input type="text" name="nom" value="" /> 
                                                        
                                                                                </div>
                                                                            
                                                                            </form>
                                                                                     
                            
                            
                            
                            
                            
                            
                            
                            
			</div>
			<div class="modal-footer">
			            <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
		
                                                                               
			</div>
		               </div>
	                               </div>
     
         </div>     
                                    <!------------------------------------------------------------ -->
              
              
          
                  </tr>                                                                                                                                                                                       
                  
                     </c:forEach> 
    
                </tbody> 
                       <tfoot> 
                              </tfoot>
                                    </table> 
           
                                             </div>
                                                  <h1 id="test"></h1>
        
        

        
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>  
<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"> </script> 
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script> 

         <script>  

             $('.mydatatable').DataTable();  
               
                	function confirmGo(m, u) {
            	if (confirm(m)) {
                	window.location = u;
            	}
        	}  
                
                function toAlertModal(a){ 
                     
                     Document.getElementById("block").href= s ;    
                            
                      
          
                }  
               

         </script>
   
         <!-- Alert Modal -->  
  
         
         

        
    </body>
</html>
