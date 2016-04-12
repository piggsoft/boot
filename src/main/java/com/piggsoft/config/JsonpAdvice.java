package com.piggsoft.config;

import org.springframework.core.annotation.Order;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

@Order(1)
@ControllerAdvice(basePackages = {"com.piggsoft"})
public class JsonpAdvice extends AbstractJsonpResponseBodyAdvice {

    public JsonpAdvice() {
        super("callback");
    }
}
