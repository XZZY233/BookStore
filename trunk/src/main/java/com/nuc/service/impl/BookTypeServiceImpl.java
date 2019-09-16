package com.nuc.service.impl;

import com.nuc.model.BookType;
import com.nuc.service.BookTypeService;
import org.springframework.stereotype.Service;

@Service("bookTypeService")
public class BookTypeServiceImpl extends BaseServiceImpl<BookType> implements BookTypeService {
}
