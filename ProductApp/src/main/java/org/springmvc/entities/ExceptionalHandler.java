package org.springmvc.entities;

import org.hibernate.ObjectNotFoundException;
import org.hibernate.TypeMismatchException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ExceptionalHandler {

    @ExceptionHandler(value = NullPointerException.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public String nullPointerException() {

        return "nullPointerException";
    }

    @ExceptionHandler(value = TypeMismatchException.class)
    @ResponseStatus(value = HttpStatus.EXPECTATION_FAILED)
    public String typeMismatchException() {

        return "nullPointerException";
    }

    @ExceptionHandler(value = IllegalAccessException.class)
    @ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE)
    public String illegalAccessException() {

        return "nullPointerException";
    }

    @ExceptionHandler(value = IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.NOT_ACCEPTABLE)
    public String illegalArgumentException() {

        return "nullPointerException";
    }

    @ExceptionHandler(value = ObjectNotFoundException.class)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public String objectNotFoundException() {

        return "nullPointerException";
    }

    @ExceptionHandler(value = Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public String exception() {

        return "nullPointerException";
    }
}
