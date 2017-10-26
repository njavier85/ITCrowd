<%@ page session="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>
<style type="text/css">

            .paging-nav {
                text-align: right;
                padding-top: 2px;
            }

            .paging-nav a {
                margin: auto 1px;
                text-decoration: none;
                display: inline-block;
                padding: 1px 7px;
                background: #91b9e6;
                color: white;
                border-radius: 3px;
            }

            .paging-nav .selected-page {
                background: #187ed5;
                font-weight: bold;
            }

            .paging-nav,
            #tableData {
                width: 1050px;
                margin: 0 auto;
                font-family: Arial, sans-serif;
            }
        </style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

							 <div>

							 	<div>
							 	     <a href="<c:url value='/' />" >
                                              <button>Atras</button>
                                      </a>
							 		 <a href="<c:url value='/deleteAllItem' />" >
                                              <button>Wipe Out</button>
                                      </a>
							 	</div>

                  				<table  id="tableData">
                                    <thead>
                                    <tr>
                                         <th>ID</th>
										 <th>Description</th>
										 <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
		                                    <c:forEach items="${itemList}" var="item">
										        <tr>
										        	<td>${item.id}</td>
													<td>${item.description}</td>
													 <td>
                                                        <a href="<c:url value='/deleteItem/${item.id}' />" >
                                                        	<button>Delete Item</button>
                                                        </a>
                                                        <a href="<c:url value='/editItem/${item.id}' />" >
                                                        	<button>Edit Item</button>
                                                        </a>
                                                    </td>
										        </tr>
										    </c:forEach>
                                    </tbody>
                                </table>
                                
                               
                                
                            </div>  
                                    
</body>

<script src="resources/js/jquery.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script> 
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
<script type="text/javascript" src="resources/js/paging.js"></script>

<script>
	function deleteRow(btn) {
		  var row = btn.parentNode.parentNode;
		  row.parentNode.removeChild(row);
	}
</script>
<script type="text/javascript">
	       $(document).ready(function() {
	           $('#tableData').paging({limit:5});
	        });
</script>
<script>
 function showPayModal(itemid) {  
	 alert("Hola1");
	$('#sendQuoteModal').show();
}
</script>		    
</html>