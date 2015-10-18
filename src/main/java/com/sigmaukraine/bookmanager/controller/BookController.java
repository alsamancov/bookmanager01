package com.sigmaukraine.bookmanager.controller;

import com.sigmaukraine.bookmanager.domain.Book;
import com.sigmaukraine.bookmanager.repository.BookRepository;
import com.sigmaukraine.bookmanager.validation.BookValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class BookController {


    private BookRepository bookRepository;

    private BookValidator bookValidator;

    @Autowired
    public BookController(BookRepository bookRepository, BookValidator bookValidator) {
        this.bookRepository = bookRepository;
        this.bookValidator = bookValidator;
    }


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getBook(Model model) {
        List<Book> books = this.bookRepository.listAll();

        model.addAttribute("books", books);
        return "index";
    }

    @RequestMapping(value = "addBook", method = RequestMethod.GET)
    public String addBook(Model model){
        model.addAttribute("book", new Book());
        return "addBook";
    }

    @RequestMapping(value = "addBook", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book, BindingResult bindingResult){
        this.bookValidator.validate(book, bindingResult);

        if(bindingResult.hasErrors()){
            return "addBook";
        }
        this.bookRepository.addContact(book);
        return "redirect:/";
    }

    @RequestMapping(value = "deleteBook/{id}", method = RequestMethod.GET)
    public String deleteBook(@PathVariable Integer id){
        this.bookRepository.removeBook(id);

        return "redirect:/";
    }
}
