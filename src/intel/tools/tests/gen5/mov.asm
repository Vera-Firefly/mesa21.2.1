mov(8)          m2<1>UD         g1<8,8,1>UD                     { align1 nomask };
mov(8)          g9<1>.xyzUD     0x00000000UD                    { align16 };
mov.sat(8)      m5<1>F          g4<4>F                          { align16 };
mov(8)          m4<1>F          g6<4>F                          { align16 };
mov(8)          m2<1>UD         g9<4>UD                         { align16 };
mov(8)          m3<1>F          g4.3<0,1,0>F                    { align1 };
mov(16)         m3<1>F          g4.3<0,1,0>F                    { align1 compr4 };
mov(8)          g2<1>F          g2<8,8,1>UW                     { align1 };
mov(8)          g2<1>D          g2<8,8,1>F                      { align1 };
mov(8)          g2<1>F          g2<8,8,1>D                      { align1 };
mov(16)         g12<1>F         g4<8,8,1>UW                     { align1 compr };
mov(16)         g4<1>D          g12<8,8,1>F                     { align1 compr };
mov(16)         g12<1>F         g4<8,8,1>D                      { align1 compr };
mov(8)          m2<1>UD         0x00000000UD                    { align16 };
mov(8)          m4<1>F          0x0F             /* 0F */       { align1 };
mov(16)         m3<1>F          0x0F             /* 0F */       { align1 compr4 };
mov(8)          g2<1>.xD        224D                            { align16 };
mov(8)          m15<1>D         g2<4>.xUD                       { align16 };
mov(8)          g12<1>D         0D                              { align1 };
mov(8)          m2<1>UD         0x00000000UD                    { align1 };
mov(16)         g14<1>D         0D                              { align1 compr };
mov(16)         m2<1>UD         0x00000000UD                    { align1 compr };
mov(8)          g5<1>.xyF       0x3000VF        /* [0F, 1F, 0F, 0F]VF */ { align16 };
mov(8)          g4<1>.xyD       g2<4>.xyyyD                     { align16 };
mov(8)          m4<1>D          g9.3<0,1,0>D                    { align1 };
mov(8)          m5<1>UD         0D                              { align1 };
mov(8)          m2<1>D          g2<8,8,1>F                      { align1 };
mov(16)         m6<1>D          g9.3<0,1,0>D                    { align1 compr };
mov(16)         m8<1>UD         0D                              { align1 compr };
mov(16)         m2<1>D          g4<8,8,1>F                      { align1 compr };
mov.sat(8)      m3<1>F          g2<0,1,0>F                      { align1 };
mov.sat(16)     m3<1>F          g2<0,1,0>F                      { align1 compr4 };
mov(8)          m5<1>.wD        0D                              { align16 NoDDChk };
mov(8)          m3<1>F          0x42fc6666F      /* 126.2F */   { align1 sechalf };
mov(8)          m5<1>.wD        g8<4>.wD                        { align16 NoDDChk };
mov(8)          g6<1>.xD        g6<4>.xF                        { align16 };
mov(8)          m3<1>UD         g2<8,8,1>UD                     { align1 };
mov(16)         m3<1>UD         g4<8,8,1>UD                     { align1 compr4 };
mov(8)          m5<1>F          0x28000030VF    /* [1F, 0F, 0F, 0.75F]VF */ { align16 };
mov(8)          m6<1>.xF        0x0F             /* 0F */       { align16 };
mov(8)          m3<1>F          g2<8,8,1>D                      { align1 };
mov(8)          m5<1>.xF        g1<0>.xD                        { align16 NoDDClr };
mov(8)          m5<1>.yF        g3<4>.xD                        { align16 NoDDClr,NoDDChk };
mov(8)          m5<1>.wF        g3<4>.xD                        { align16 NoDDChk };
mov(8)          g3<1>.xF        g3<4>.xD                        { align16 NoDDClr };
mov(8)          g3<1>.yF        g4<4>.xD                        { align16 NoDDClr,NoDDChk };
mov(8)          g3<1>.wF        g4<4>.xD                        { align16 NoDDChk };
mov(8)          g8<1>UD         g2<4>UD                         { align16 };
mov(8)          g7<1>.xF        g3<0>.xD                        { align16 };
mov(8)          g6<1>.xF        -g5<4>.yF                       { align16 NoDDClr };
mov(8)          g6<1>.yD        g5<4>.xD                        { align16 NoDDChk };
mov(8)          m2<1>D          g3<0>.xD                        { align16 };
mov.nz.f0.0(8)  g4<1>F          -(abs)g2<0,1,0>F                { align1 };
(+f0.0) mov(8)  g4<1>F          0xbf800000F      /* -1F */      { align1 };
mov.nz.f0.0(16) g4<1>F          -(abs)g2<0,1,0>F                { align1 compr };
(+f0.0) mov(16) g4<1>F          0xbf800000F      /* -1F */      { align1 compr };
mov(8)          g3<1>.xyzF      0x0F             /* 0F */       { align16 };
mov(8)          g3<1>.xyD       g2<4>.xyyyD                     { align16 NoDDClr };
mov.sat(8)      m5<1>.wF        g20<4>.wF                       { align16 NoDDChk };
mov(8)          g26<1>.xyzUD    0x00000000UD                    { align16 NoDDClr };
mov(8)          g21<1>.xD       1065353216D                     { align16 NoDDClr };
mov(8)          g5<1>.zwD       0D                              { align16 NoDDChk };
mov(16)         m4<1>F          g4<8,8,1>D                      { align1 compr4 };
mov(8)          g3<1>D          g2<8,8,1>D                      { align1 };
mov(16)         g6<1>D          g4<8,8,1>D                      { align1 compr };
mov(8)          m3<1>F          g4<8,8,1>F                      { align1 nomask };
mov(8)          m15<1>F         g6<8,8,1>F                      { align1 sechalf };
mov.sat(8)      m5<1>.zF        0x3eaaaaabF      /* 0.333333F */ { align16 };
mov.sat(8)      m5<1>.wF        0x3dcccccdF      /* 0.1F */     { align16 NoDDClr };
mov(8)          m5<1>.xyF       0x2030VF        /* [1F, 0.5F, 0F, 0F]VF */ { align16 NoDDChk };
mov.sat(8)      m5<1>F          g4<4>D                          { align16 };
mov(8)          g10<1>F         g10<8,8,1>F                     { align1 };
mov(8)          g11<1>F         g4<8,8,1>F                      { align1 sechalf };
mov.sat(8)      m5<1>.zF        0x3f666660F      /* 0.9F */     { align16 NoDDClr,NoDDChk };
mov.sat(8)      m5<1>.wF        0x3e4cccc0F      /* 0.2F */     { align16 NoDDChk };
mov(16)         g10<1>F         g2<0,1,0>F                      { align1 compr };
mov(8)          g5<1>F          0x3f800000F      /* 1F */       { align1 };
mov(16)         g10<1>F         0x3f800000F      /* 1F */       { align1 compr };
mov(8)          g3<1>.zD        g1<0>.xD                        { align16 NoDDClr,NoDDChk };
mov(1)          m14<1>D         96D                             { align1 nomask };
mov(1)          m15<1>D         g5<0,1,0>D                      { align1 nomask };
mov(8)          g33<1>.zD       1053609165D                     { align16 NoDDClr,NoDDChk };
mov(8)          g2<1>.xyzF      g2<4>.wF                        { align16 };
mov.nz.f0.0(8)  null<1>D        g2<8,8,1>D                      { align1 };
mov.nz.f0.0(16) null<1>D        g4<8,8,1>D                      { align1 compr };
mov(8)          m2<1>.zwF       0D                              { align16 };
mov(8)          m5<1>.xD        1036831949D                     { align16 };
mov(8)          m5<1>.yD        1045220557D                     { align16 NoDDClr };
mov(8)          m5<1>.zD        1050253722D                     { align16 NoDDClr,NoDDChk };
mov(1)          f0.1<1>UW       g0<0,1,0>UW                     { align1 nomask };
mov(1)          g0<1>UW         f0.1<0,1,0>UW                   { align1 nomask };
(+f0.0.any4h) mov(8) g3<1>.xD   -1D                             { align16 };
mov.sat(8)      m5<1>.yzF       g1<0>.xxzzF                     { align16 NoDDClr };
mov(8)          m5<1>F          g3<4>D                          { align16 };
mov.sat(8)      m5<1>.xF        g5<4>.xD                        { align16 NoDDClr };
mov.sat(8)      m5<1>.yF        g5<4>.xD                        { align16 NoDDClr,NoDDChk };
mov.sat(8)      m5<1>.wF        g5<4>.xD                        { align16 NoDDChk };
mov(8)          g4<1>D          0x7e767676VF    /* [22F, 22F, 22F, 30F]VF */ { align16 };
mov(8)          g5<1>F          g3<4>UD                         { align16 };
mov(8)          m5<1>.xyzF      0x3000VF        /* [0F, 1F, 0F, 0F]VF */ { align16 NoDDClr };
mov.nz.f0.0(8)  null<1>.xD      g8<4>.xD                        { align16 };
mov.nz.f0.0(8)  g8<1>F          -(abs)g1<0>F                    { align16 };
(+f0.0) mov(8)  g8<1>F          0xbf800000F      /* -1F */      { align16 };