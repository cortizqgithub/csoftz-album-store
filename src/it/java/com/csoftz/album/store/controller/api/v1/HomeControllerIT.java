/* -------------------------------------------- COPYRIGHT NOTICE --------------------------------------------
 * This file contains confidential and proprietary information of The Walt Disney Company.
 * No license or permission is hereby granted to use such information in any manner.
 *
 * (c) Walt Disney.  All rights reserved.
 */
package com.csoftz.album.store.controller.api.v1;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class HomeControllerIT {

    @Test
    @DisplayName("Initial to be change")
    void verifyItWorks() {
        var i = Integer.valueOf(0);

        assertThat(i)
            .isNotNull()
            .isEqualTo(0);
    }

}