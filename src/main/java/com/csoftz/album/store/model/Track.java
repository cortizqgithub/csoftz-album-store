package com.csoftz.album.store.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class Track {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer trackId;

    private String name;

    @ManyToOne
    @JoinColumn(name = "albumId", nullable = false)
    private Album album;

    @ManyToOne
    @JoinColumn(name = "mediaTypeId", nullable = false)
    private MediaType mediaType;

    @ManyToOne
    @JoinColumn(name = "genreId", nullable = false)
    private Genre genre;

    private String composer;
    private Integer milliseconds;
    private Integer bytes;
    private Double unitPrice;
}

