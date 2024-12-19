package com.csoftz.album.store.controller.api.v1;

import com.csoftz.album.store.model.Album;
import com.csoftz.album.store.service.AlbumService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/v1/albums")
public class AlbumController {
    private final AlbumService albumService;

    public AlbumController(AlbumService albumService) {
        this.albumService = albumService;
    }

    @GetMapping
    public Iterable<Album> findAll() {

        return albumService.findAll();

    }
}
