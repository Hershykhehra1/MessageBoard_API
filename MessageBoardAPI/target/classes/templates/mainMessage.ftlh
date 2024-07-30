<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MessageBoard</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" type="text/css" href="css/Styles.css">
<script src="javascript/main.js" type="text/javascript"></script>
<title>Login</title>
</head>
<body>
	<div id="messageDisplay">
		<div>
			<div class="center">Welcome ${user.name}</div>
			<br />

			<div class="center">
				<a href="/addMessage" class="btn btn-primary">Add Message</a> <a
					href="/logout" class="btn btn-primary">Logout</a>
			</div>
			<br />
			<div class="center">
				<table>
					<#list messages>
					<div class="divTable">
						<div class="divTableHeading">
							<div class="divTableRow">
								<div class="divTableHead">Name</div>
								<div class="divTableHead">Message</div>
								<div class="divTableHead">Date</div>
								<div class="divTableHead">Edit</div>
								<div class="divTableHead">Delete</div>
							</div>
						</div>
						<div class="divTableBody">
							<#items as message>
							<div class="divTableRow">
								<div class="divTableCell">${message.userName}</div>
								<div class="divTableCell">${message.message}</div>
								<div class="divTableCell">${message.date.format('dd MMMM
									yyyy')}</div>
								<div class="divTableCell">
									<a href="/editMessage/${message.id}" class="btn btn-primary">Edit</a>
								</div>
								<div class="divTableCell">
									<a href="/deleteMessage/${message.id}" class="btn btn-primary">Delete</a>
								</div>
							</div>

							</#items>
						</div>
					</div>
					<#else>
					<p>No Message</p></#list>
					</div>
					</div>
			</div>





			<div id="addMessageForm">
				<div class="center">
					<div class="header">${user.name} New Message</div>
						<input type="hidden" name="userName" value="${user.name}">
							<input type="text" id="addMessageContent" name="addMessageContent" class="form-control form-control-lg" autocomplete="given-name" />
						
						 <a href="/messages" class="btn btn-primary" id="addSubmit">Back</a>
						<button type="submit" class="btn btn-primary">Add Message</button>
				</div>
			</div>






			<div id="editMessageForm">
				<div class="center">
					<div class="header">${user.name} Edit Message</div>
						<input type="hidden" name="userName" value="${user.name}">
						<@spring.formTextarea "messages.message" "rows='4' cols='40'" /><br />
						<@spring.showErrors "<br />" "color: red;" /> <br /> <a
							href="/messages" class="btn btn-primary">Back</a>
						<button type="submit" class="btn btn-primary">Edit
							Message</button>
				</div>
			</div>
</body>
</html>