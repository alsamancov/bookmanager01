package com.sigmaukraine.bookmanager.validation;

import com.sigmaukraine.bookmanager.domain.Book;
import com.sigmaukraine.bookmanager.repository.BookRepository;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class BookValidator implements Validator {



    @Override
    public boolean supports(Class<?> aClass) {
        return Book.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "required.name", "Name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "genre", "required.genre", "Genre is required.");
    }
}
