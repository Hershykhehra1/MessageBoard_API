package cs3220.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import cs3220.model.MessageEntry;

public interface MessageRepository extends CrudRepository<MessageEntry, Integer>{
	Optional<MessageEntry> findById(Integer id);

}
