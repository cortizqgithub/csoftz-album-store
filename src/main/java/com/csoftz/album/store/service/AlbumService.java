package com.csoftz.album.store.service;


import com.csoftz.album.store.model.Album;

import java.util.List;

public interface AlbumService {
    Iterable<Album> findAll();
}
