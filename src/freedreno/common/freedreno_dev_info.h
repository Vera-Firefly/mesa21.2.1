/*
 * Copyright © 2020 Valve Corporation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice (including the next
 * paragraph) shall be included in all copies or substantial portions of the
 * Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 *
 */

#ifndef FREEDRENO_DEVICE_INFO_H
#define FREEDRENO_DEVICE_INFO_H

#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

/**
 * Freedreno hardware description and quirks
 */

struct fd_dev_info {
   /* alignment for size of tiles */
   uint32_t tile_align_w, tile_align_h;
   /* gmem load/store granularity */
   uint32_t gmem_align_w, gmem_align_h;
   /* max tile size */
   uint32_t tile_max_w, tile_max_h;

   uint32_t num_vsc_pipes;

   /* number of CCU is always equal to the number of SP */
   union {
      uint32_t num_sp_cores;
      uint32_t num_ccu;
   };

   union {
      struct {
         /* Information for private memory calculations */
         uint32_t fibers_per_sp;

         uint32_t reg_size_vec4;

         /* Whether the PC_MULTIVIEW_MASK register exists. */
         bool supports_multiview_mask;

         /* info for setting RB_CCU_CNTL */
         bool ccu_cntl_gmem_unk2;
         bool has_z24uint_s8uint;

         bool tess_use_shared;

         /* newer a6xx allows using 16-bit descriptor for both 16-bit
          * and 32-bit access
          */
         bool storage_16bit;

         /* The latest known a630_sqe.fw fails to wait for WFI before
          * reading the indirect buffer when using CP_DRAW_INDIRECT_MULTI,
          * so we have to fall back to CP_WAIT_FOR_ME except for a650
          * which has a fixed firmware.
          *
          * TODO: There may be newer a630_sqe.fw released in the future
          * which fixes this, if so we should detect it and avoid this
          * workaround.  Once we have uapi to query fw version, we can
          * replace this with minimum fw version.
          */
         bool indirect_draw_wfm_quirk;

         bool has_tex_filter_cubic;

         bool has_sample_locations;

         /* The firmware on newer a6xx drops CP_REG_WRITE support as we
          * can now use direct register writes for these regs.
          */
         bool has_cp_reg_write;

         bool has_8bpp_ubwc;

         struct {
            uint32_t RB_UNKNOWN_8E04_blit;
            uint32_t PC_UNKNOWN_9805;
            uint32_t SP_UNKNOWN_A0F8;
         } magic;
      } a6xx;
   };
};

struct fd_dev_id {
   uint32_t gpu_id;
   const char *name;
   const struct fd_dev_info *info;
};

/* per CCU GMEM amount reserved for depth cache for direct rendering */
#define A6XX_CCU_DEPTH_SIZE (64 * 1024)
/* per CCU GMEM amount reserved for color cache used by GMEM resolves
 * which require color cache (non-BLIT event case).
 * this is smaller than what is normally used by direct rendering
 * (RB_CCU_CNTL.GMEM bit enables this smaller size)
 * if a GMEM resolve requires color cache, the driver needs to make sure
 * it will not overwrite pixel data in GMEM that is still needed
 */
#define A6XX_CCU_GMEM_COLOR_SIZE (16 * 1024)

const struct fd_dev_info * fd_dev_info(uint32_t gpu_id);
const char * fd_dev_name(uint32_t gpu_id);

#ifdef __cplusplus
} /* end of extern "C" */
#endif

#endif /* FREEDRENO_DEVICE_INFO_H */