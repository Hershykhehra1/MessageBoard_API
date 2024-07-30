<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MessageBoard</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="javascript/main.js" type="text/javascript"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet" type="text/css" href="./css/Styles.css">
<title>Login</title>
</head>
<body>
	<div id="loginForm">
		<div class="center header">Login</div>
		<br />
		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell">
						<label for="email">Email:</label>
					</div>
					<div class="divTableCell">
						<input type="text" id="loginEmail" name="loginEmail"
							class="form-control form-control-lg" autocomplete="given-name" />

					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">
						<label for="password">Password:</label>
					</div>
					<div class="divTableCell">
						<input type="text" id="loginPassword" name="loginPassword"
							class="form-control form-control-lg" autocomplete="given-name" />

					</div>
				</div>
			</div>
		</div>
		<div class="errors"></div>
		<br />
		<div class="center">
			<button type="submit" class="btn btn-primary" id="loginSubmit">Login</button>
			<button class="btn btn-primary" id="backToRegister">Register</button>
		</div>
	</div>

	<div id="registerForm">
		<div class="center header">Register</div>
		<br />
		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell">
						<label for="email">Email:</label>
					</div>
					<div class="divTableCell">
						<input type="text" id="registerEmail" name="registerEmail"
							class="form-control form-control-lg" autocomplete="given-name" />

					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">
						<label for="name">Name:</label>
					</div>
					<div class="divTableCell">
						<input type="text" id="registerName" name="registerName"
							class="form-control form-control-lg" autocomplete="given-name" />

					</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">
						<label for="password">Password:</label>
					</div>
					<div class="divTableCell">
						<input type="text" id="registerPassword" name="registerPassword"
							class="form-control form-control-lg" autocomplete="given-name" />

					</div>
				</div>
			</div>
		</div>
		<div class="errors"></div>
		<br />
		<div class="center">
			<button class="btn btn-primary" id="backToLogin">Login</button>
			<button type="submit" class="btn btn-primary" id="registerSubmit">Register</button>
		</div>
	</div>




	<div id="messageDisplay">
	
	<div id="welcomeMessage"></div>

		<div class="center">
			<button id="displayAdd" class="btn btn-primary">Add Message</button>
			<button id="logout" class="btn btn-primary">Logout</button>
		</div>
		<br />

		<div class="center" id="messageTable"></div>
		<div class="errors"></div>

		
	</div>



	<div id="addMessageForm">
        <div class="center">
            <input type="hidden" name="userName" value="">
            <div>Add A Message</div>
            <textarea id="addMessageContent" name="addMessageContent" class="form-control form-control-lg" autocomplete="given-name"></textarea>
            <button class="btn btn-primary back" id="addBack">Back</button>
            <button class="btn btn-primary" id="addSubmit">Add Message</button>
            <div class="errors"></div>

        </div>
    </div>



	<div id="editMessageForm">
    <input id="editMessageInput" type="hidden" name="editMessageForm" value="">
    <div class="center">
    <div>Edit A Message</div>
        <input type="hidden" name="messageId" value="">
        <textarea id="editMessageContent" name="editMessageContent" class="form-control form-control-lg" autocomplete="given-name"></textarea>
        <button class="btn btn-primary back" id="editBack">Back</button>
        <button class="btn btn-primary" id="editSubmit">Edit Message</button>
        <div class="errors"></div>

    </div>
</div>


</body>
</html>