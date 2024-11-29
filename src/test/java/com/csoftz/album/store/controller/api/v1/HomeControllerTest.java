package com.csoftz.album.store.controller.api.v1;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class HomeControllerTest {
    @Test
    @DisplayName("Initial to be change")
    void verifyItWorks() {
        var i = Integer.valueOf(0);

        assertThat(i)
            .isNotNull()
            .isEqualTo(0);
    }
}