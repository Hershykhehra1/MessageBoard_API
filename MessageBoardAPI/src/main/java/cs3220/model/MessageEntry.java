package cs3220.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotBlank;

@Entity
public class MessageEntry {
	@Id
	@GeneratedValue
	private Integer messageId;
	private String userName;
	@NotBlank(message = "Message cannot be empty")
	private String message;
	private LocalDate date;
	@ManyToOne
	@JoinTable(name = "messageAuthors")
	private UserEntry user;

	public MessageEntry() {
		this.setDate(LocalDate.now());
	}

	public MessageEntry(String userName, String message, UserEntry user) {
		this.userName = userName;
		this.message = message;
		this.setDate(LocalDate.now());
		this.user = user;
	}

	public Integer getId() {
		return messageId;
	}

	public void setId(Integer messageId) {
		this.messageId = messageId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public UserEntry getUser() {
		return user;
	}

	public void setUser(UserEntry user) {
		this.user = user;
	}

}