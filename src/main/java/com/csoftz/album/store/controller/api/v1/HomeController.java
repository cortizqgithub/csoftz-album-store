package com.csoftz.album.store.controller.api.v1;

import static com.csoftz.album.store.common.constants.Constants.HELLO_WORLD;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1/home")
public class HomeController {
    public String home() {
        return HELLO_WORLD;
    }

}
