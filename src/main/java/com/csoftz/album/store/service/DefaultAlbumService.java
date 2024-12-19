package com.csoftz.album.store.service;

import com.csoftz.album.store.model.Album;
import com.csoftz.album.store.repository.AlbumRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DefaultAlbumService implements AlbumService{
    private final AlbumRepository albumRepository;
    public DefaultAlbumService(AlbumRepository albumRepository) {
        this.albumRepository = albumRepository;
    }

    @Override
    public Iterable<Album> findAll() {
        Iterable<Album> all = albumRepository.findAll();
        return all;
    }
}
