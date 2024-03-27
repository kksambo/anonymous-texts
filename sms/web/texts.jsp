<%-- 
    Document   : index
    Created on : Mar 20, 2024, 6:09:17 PM
    Author     : Mecer
--%>


<%@page import="java.sql.*"%>
<%@page import="users.User"%>
<%@page import="Texts.Mess"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    String Username = (String) session.getAttribute("u_name");
    out.print("Hi " + Username);
    
 // Establishing connection to the database
 Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/text", "root", "");
            
            Statement st = conn.createStatement();
            String q = "select * from texts where username = " + "'"+Username+"'";
            ResultSet rs = st.executeQuery(q);
                
    
    
ArrayList<Mess> text = new ArrayList();
while(rs.next()){
    
    
   text.add(new Mess(rs.getString("date"),rs.getString("message"),rs.getString("username"))); 
} 



    
    %>
    <a href="index.jsp?Username=<%= Username %>">Click here to visit our website</a>


<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        /* Your custom styles go here */
        /* Adjust font sizes, margins, paddings, etc. */
        body {
            font-size: 16px;
        }
        .header {
            padding: 10px;
        }
        /* Hide sidebar or other non-essential elements */
        .sidebar {
            display: none;
        }
        /* Styles for larger screens (desktop) */
        @media only screen and (min-width: 768px) {
            /* Adjust layout for desktop view */
            .sidebar {
                display: block;
                /* Other styles */
            }
        }
body{margin-top:20px;}

.chat-online {
    color: #34ce57
}

.chat-offline {
    color: #e4606d
}

.chat-messages {
    display: flex;
    flex-direction: column;
    max-height: 800px;
    overflow-y: scroll
}

.chat-message-left,
.chat-message-right {
    display: flex;
    flex-shrink: 0
}

.chat-message-left {
    margin-right: auto
}

.chat-message-right {
    flex-direction: row-reverse;
    margin-left: auto
}
.py-3 {
    padding-top: 1rem!important;
    padding-bottom: 1rem!important;
}
.px-4 {
    padding-right: 1.5rem!important;
    padding-left: 1.5rem!important;
}
.flex-grow-0 {
    flex-grow: 0!important;
}
.border-top {
    border-top: 1px solid #dee2e6!important;
}
 @media only screen and (max-width: 768px) {
    /* Adjust font sizes, margins, paddings, etc. */
    body {
        font-size: 16px;
    }
    .header {
        padding: 10px;
    }
    /* Hide sidebar or other non-essential elements */
    .sidebar {
        display: none;
    }
}

/* Styles for larger screens (desktop) */
@media only screen and (min-width: 768px) {
    /* Adjust layout for desktop view */
    .sidebar {
        display: block;
        /* Other styles */
    }
}           
</style>
</head>
<body>
<main class="content">
    <div class="container p-0">
        
     <h6>Fluffy-Texts</h6>
     <div class="card">
        <div class="row g-0">
   <div class="col-12 col-lg-5 col-xl-3 border-right">

					<div class="px-4 d-none d-md-block">
						<div class="d-flex align-items-center">
			<div class="flex-grow-1">
								
							</div>
						</div>
					</div>

					<a href="#" class="list-group-item list-group-item-action border-0">
						<div class="badge bg-success float-right"> </div>
						<div class="d-flex align-items-start">
							<img src="https://bootdey.com/img/Content/avatar/avatar2.png" class="rounded-circle mr-1" alt="William Harris" width="40" height="40">
							<div class="flex-grow-1 ml-3">
								Fluffy-cat
								<div class="small"><span class="fas fa-circle chat-online"></span> Online</div>
							</div>
						</div>
					</a>



					<hr class="d-block d-lg-none mt-1 mb-0">
				</div>
				<div class="col-12 col-lg-7 col-xl-9">
					<div class="py-2 px-4 border-bottom d-none d-lg-block">
						<div class="d-flex align-items-center py-1">
							<div class="position-relative">
								<img src="https://bootdey.com/img/Content/avatar/avatar3.png" class="rounded-circle mr-1" alt="Sharon Lessman" width="40" height="40">
							</div>
							<div class="flex-grow-1 pl-3">
								<strong>Fluffy-cat</strong>
								<div class="text-muted small"><em>Typing...</em></div>
							</div>
							<div><button class="btn btn-primary btn-lg mr-1 px-3">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home feather-lg">
        <path d="M3 9l9-7 9 7v10a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V9z"></path>
        <polyline points="9 22 9 12 15 12 15 22"></polyline>
    </svg>
</button>
								
							</div>
						</div>
					</div>

					<div class="position-relative">
						<div class="chat-messages p-4">

							<div class="chat-message-right pb-4">
								<div>
									<img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="rounded-circle mr-1" alt="Chris Wood" width="40" height="40">
									<div class="text-muted small text-nowrap mt-2">2:33 am</div>
								</div>
								<div class="flex-shrink-1 bg-light rounded py-2 px-3 mr-3">
									<div class="font-weight-bold mb-1">fluffy-cat</div>
                                                                        hi <%=Username%> m fluffy-cat i have anonymous texts for you!
								</div>
							</div>

                                                    <%
                                                        for (int i = text.size()-1; i >=0; i--) {
                                                        
                                                        %>
                                                                                                        
                                                                              		<div class="chat-message-left pb-4">
								<div>
									<img src="https://bootdey.com/img/Content/avatar/avatar3.png" class="rounded-circle mr-1" alt="Sharon Lessman" width="40" height="40">
                                                                        <div class="text-muted small text-nowrap mt-2"><%=text.get(i).getDate()%></div>
								</div>
								<div class="flex-shrink-1 bg-light rounded py-2 px-3 ml-3">
									<div class="font-weight-bold mb-1">anonymous-sender</div>
                                                                        
								<%=text.get(i).getText()%>
								</div>
							</div> 
                                                        
                                                        <%}
                                                            %>


</div>
</div>

<div class="flex-grow-0 py-3 px-4 border-top">
    <form action="send.jsp" method="post">
<div class="input-group">
   
<input type="text" name="sms" class="form-control" placeholder="Type your message">
<button type submit  class="btn btn-primary">Send</button>

</div>
    </form>
</div>

</div>
</div>
</div>
	</div>
</main>
    </body>
</html>