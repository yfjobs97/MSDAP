//-----------------------------------------------------
// Design Name : rom
// File Name   : rom.v
// Function    : ROM Using readmemb
// Coder       : Deepak Kumar Tala
//-----------------------------------------------------
module rom (
data    , // Data output
clk   // Clock
);
output reg [7:0] data;
input        clk;
   
  
reg [7:0]    mem [0:255] ;
reg [7:0] address = 0;
reg [15:0] rj = {
'h0020,      // r1
'h0020,      // r2
'h0020,      // r3
'h0020,      // r4
'h0020,      // r5
'h0020,      // r6
'h0020,      // r7
'h0020,      // r8
'h0020,      // r9
'h0020,      // r10
'h0020,      // r11
'h0020,      // r12
'h0020,      // r13
'h0020,      // r14
'h0020,      // r15
'h0020      // r16
};

reg [511:0] coeff = {
'h00BF,      // 1
'h015A,      // 2
'h01CE,      // 3
'h014C,      // 4
'h00D5,      // 5
'h015E,      // 6
'h01F1,      // 7
'h011D,      // 8
'h0051,      // 9
'h0141,      // 10
'h014D,      // 11
'h0056,      // 12
'h0092,      // 13
'h01E0,      // 14
'h0161,      // 15
'h011A,      // 16
'h0018,      // 17
'h016E,      // 18
'h01B3,      // 19
'h005F,      // 20
'h00DD,      // 21
'h0071,      // 22
'h0157,      // 23
'h0024,      // 24
'h01F7,      // 25
'h00C9,      // 26
'h00D0,      // 27
'h0054,      // 28
'h01CC,      // 29
'h00D8,      // 30
'h004B,      // 31
'h00D3,      // 32
'h018A,      // 33
'h00E0,      // 34
'h017D,      // 35
'h01E4,      // 36
'h010F,      // 37
'h008D,      // 38
'h004F,      // 39
'h0160,      // 40
'h0101,      // 41
'h0047,      // 42
'h0158,      // 43
'h0183,      // 44
'h010B,      // 45
'h01FA,      // 46
'h00E5,      // 47
'h0184,      // 48
'h01FB,      // 49
'h0124,      // 50
'h012B,      // 51
'h00B2,      // 52
'h013A,      // 53
'h00B3,      // 54
'h0011,      // 55
'h0012,      // 56
'h0171,      // 57
'h0157,      // 58
'h003E,      // 59
'h0043,      // 60
'h0026,      // 61
'h00BC,      // 62
'h0175,      // 63
'h00F8,      // 64
'h00EB,      // 65
'h001A,      // 66
'h00BD,      // 67
'h0017,      // 68
'h00D2,      // 69
'h01A7,      // 70
'h00A6,      // 71
'h007F,      // 72
'h0161,      // 73
'h01A3,      // 74
'h0064,      // 75
'h0118,      // 76
'h0076,      // 77
'h00CA,      // 78
'h00D0,      // 79
'h01B6,      // 80
'h0149,      // 81
'h01D7,      // 82
'h014C,      // 83
'h01C3,      // 84
'h00ED,      // 85
'h0194,      // 86
'h012F,      // 87
'h00E3,      // 88
'h0074,      // 89
'h01BD,      // 90
'h01C7,      // 91
'h0143,      // 92
'h0121,      // 93
'h003C,      // 94
'h017B,      // 95
'h0109,      // 96
'h0014,      // 97
'h0138,      // 98
'h00FE,      // 99
'h01F2,      // 100
'h0049,      // 101
'h011A,      // 102
'h01A4,      // 103
'h011D,      // 104
'h0059,      // 105
'h006A,      // 106
'h015D,      // 107
'h01C8,      // 108
'h007E,      // 109
'h01FA,      // 110
'h00A0,      // 111
'h01BE,      // 112
'h0083,      // 113
'h01E2,      // 114
'h018B,      // 115
'h00E2,      // 116
'h01C8,      // 117
'h005F,      // 118
'h0003,      // 119
'h0172,      // 120
'h0013,      // 121
'h0073,      // 122
'h01C4,      // 123
'h01D2,      // 124
'h01A4,      // 125
'h001F,      // 126
'h013D,      // 127
'h0030,      // 128
'h009E,      // 129
'h017A,      // 130
'h0199,      // 131
'h0011,      // 132
'h01CD,      // 133
'h0083,      // 134
'h0128,      // 135
'h0076,      // 136
'h01E1,      // 137
'h0029,      // 138
'h01FF,      // 139
'h0160,      // 140
'h00B5,      // 141
'h0180,      // 142
'h0077,      // 143
'h0150,      // 144
'h0051,      // 145
'h01CC,      // 146
'h00AC,      // 147
'h0030,      // 148
'h01DE,      // 149
'h004A,      // 150
'h01AC,      // 151
'h00E2,      // 152
'h01D3,      // 153
'h0052,      // 154
'h001E,      // 155
'h01C6,      // 156
'h01ED,      // 157
'h00CD,      // 158
'h01AA,      // 159
'h0065,      // 160
'h0199,      // 161
'h0012,      // 162
'h00E7,      // 163
'h00D6,      // 164
'h0148,      // 165
'h0192,      // 166
'h00E8,      // 167
'h0015,      // 168
'h0176,      // 169
'h01B6,      // 170
'h0026,      // 171
'h01CC,      // 172
'h01DA,      // 173
'h004C,      // 174
'h0067,      // 175
'h0174,      // 176
'h000C,      // 177
'h01D7,      // 178
'h00D8,      // 179
'h01E9,      // 180
'h010A,      // 181
'h01DE,      // 182
'h0157,      // 183
'h01D4,      // 184
'h00AE,      // 185
'h00FB,      // 186
'h0110,      // 187
'h00E4,      // 188
'h0099,      // 189
'h0019,      // 190
'h01C2,      // 191
'h0122,      // 192
'h0163,      // 193
'h0006,      // 194
'h0068,      // 195
'h01C6,      // 196
'h01D0,      // 197
'h00DB,      // 198
'h011B,      // 199
'h0152,      // 200
'h01D1,      // 201
'h0084,      // 202
'h017A,      // 203
'h0111,      // 204
'h0096,      // 205
'h0046,      // 206
'h01CA,      // 207
'h009C,      // 208
'h0168,      // 209
'h010F,      // 210
'h0110,      // 211
'h00C7,      // 212
'h00C8,      // 213
'h0181,      // 214
'h0149,      // 215
'h0124,      // 216
'h017D,      // 217
'h01F0,      // 218
'h01F3,      // 219
'h0030,      // 220
'h014D,      // 221
'h01BA,      // 222
'h01D2,      // 223
'h01B2,      // 224
'h0161,      // 225
'h01BC,      // 226
'h0120,      // 227
'h01DD,      // 228
'h01B3,      // 229
'h0166,      // 230
'h01D7,      // 231
'h00CB,      // 232
'h00D5,      // 233
'h01A2,      // 234
'h0107,      // 235
'h0173,      // 236
'h0032,      // 237
'h017B,      // 238
'h0151,      // 239
'h00E9,      // 240
'h0123,      // 241
'h0082,      // 242
'h0075,      // 243
'h0057,      // 244
'h015B,      // 245
'h001A,      // 246
'h00C3,      // 247
'h013E,      // 248
'h01D8,      // 249
'h00A7,      // 250
'h00C4,      // 251
'h00D3,      // 252
'h00E7,      // 253
'h00CD,      // 254
'h018E,      // 255
'h01A1,      // 256
'h012E,      // 257
'h00D2,      // 258
'h0116,      // 259
'h013D,      // 260
'h01FA,      // 261
'h0180,      // 262
'h017A,      // 263
'h005F,      // 264
'h002E,      // 265
'h015A,      // 266
'h00F9,      // 267
'h0067,      // 268
'h0150,      // 269
'h012C,      // 270
'h00AD,      // 271
'h01D4,      // 272
'h0089,      // 273
'h000D,      // 274
'h011C,      // 275
'h01EF,      // 276
'h007B,      // 277
'h00DC,      // 278
'h015E,      // 279
'h01A8,      // 280
'h015B,      // 281
'h005C,      // 282
'h0038,      // 283
'h01CC,      // 284
'h0137,      // 285
'h019E,      // 286
'h00E5,      // 287
'h00B2,      // 288
'h01C7,      // 289
'h016E,      // 290
'h0003,      // 291
'h018C,      // 292
'h00B7,      // 293
'h009C,      // 294
'h00C1,      // 295
'h0045,      // 296
'h019E,      // 297
'h0022,      // 298
'h0029,      // 299
'h0167,      // 300
'h00C5,      // 301
'h0177,      // 302
'h014F,      // 303
'h0033,      // 304
'h012E,      // 305
'h012B,      // 306
'h01BB,      // 307
'h01C9,      // 308
'h00AF,      // 309
'h010F,      // 310
'h00BD,      // 311
'h0113,      // 312
'h01B8,      // 313
'h01F0,      // 314
'h0150,      // 315
'h01DF,      // 316
'h008F,      // 317
'h0030,      // 318
'h0177,      // 319
'h01D3,      // 320
'h0009,      // 321
'h017F,      // 322
'h0072,      // 323
'h0031,      // 324
'h007A,      // 325
'h016D,      // 326
'h010B,      // 327
'h013C,      // 328
'h0065,      // 329
'h01CC,      // 330
'h0123,      // 331
'h01AD,      // 332
'h01F6,      // 333
'h0044,      // 334
'h0073,      // 335
'h01AB,      // 336
'h0029,      // 337
'h01D4,      // 338
'h01EF,      // 339
'h0080,      // 340
'h00E0,      // 341
'h00F0,      // 342
'h01C8,      // 343
'h01B3,      // 344
'h009B,      // 345
'h00F2,      // 346
'h0142,      // 347
'h00C5,      // 348
'h018A,      // 349
'h00A6,      // 350
'h01B5,      // 351
'h0147,      // 352
'h0094,      // 353
'h00AE,      // 354
'h0051,      // 355
'h018B,      // 356
'h018C,      // 357
'h019C,      // 358
'h008D,      // 359
'h01E8,      // 360
'h00FB,      // 361
'h0112,      // 362
'h0033,      // 363
'h011E,      // 364
'h01B6,      // 365
'h01DD,      // 366
'h00B1,      // 367
'h019C,      // 368
'h0071,      // 369
'h0124,      // 370
'h00DB,      // 371
'h01E4,      // 372
'h00A9,      // 373
'h00ED,      // 374
'h01B9,      // 375
'h0020,      // 376
'h002F,      // 377
'h0199,      // 378
'h0075,      // 379
'h0034,      // 380
'h009D,      // 381
'h00A8,      // 382
'h0068,      // 383
'h0014,      // 384
'h01BE,      // 385
'h00D4,      // 386
'h01D6,      // 387
'h017B,      // 388
'h0017,      // 389
'h01B2,      // 390
'h014C,      // 391
'h0143,      // 392
'h0126,      // 393
'h00E1,      // 394
'h0191,      // 395
'h01F9,      // 396
'h00A0,      // 397
'h01D1,      // 398
'h01CA,      // 399
'h00D5,      // 400
'h0051,      // 401
'h0007,      // 402
'h00BF,      // 403
'h015A,      // 404
'h01CE,      // 405
'h014C,      // 406
'h00D5,      // 407
'h015E,      // 408
'h01F1,      // 409
'h011D,      // 410
'h0051,      // 411
'h0141,      // 412
'h014D,      // 413
'h0056,      // 414
'h0092,      // 415
'h01E0,      // 416
'h0161,      // 417
'h011A,      // 418
'h0018,      // 419
'h016E,      // 420
'h01B3,      // 421
'h005F,      // 422
'h00DD,      // 423
'h0071,      // 424
'h0157,      // 425
'h0024,      // 426
'h01F7,      // 427
'h00C9,      // 428
'h00D0,      // 429
'h0054,      // 430
'h01CC,      // 431
'h00D8,      // 432
'h004B,      // 433
'h00D3,      // 434
'h018A,      // 435
'h00E0,      // 436
'h017D,      // 437
'h01E4,      // 438
'h010F,      // 439
'h008D,      // 440
'h004F,      // 441
'h0160,      // 442
'h0101,      // 443
'h0047,      // 444
'h0158,      // 445
'h0183,      // 446
'h010B,      // 447
'h01FA,      // 448
'h00E5,      // 449
'h0184,      // 450
'h01FB,      // 451
'h0124,      // 452
'h012B,      // 453
'h00B2,      // 454
'h013A,      // 455
'h00B3,      // 456
'h0011,      // 457
'h0012,      // 458
'h0171,      // 459
'h0157,      // 460
'h003E,      // 461
'h0043,      // 462
'h0026,      // 463
'h00BC,      // 464
'h0175,      // 465
'h00F8,      // 466
'h00EB,      // 467
'h001A,      // 468
'h00BD,      // 469
'h0017,      // 470
'h00D2,      // 471
'h01A7,      // 472
'h00A6,      // 473
'h007F,      // 474
'h0161,      // 475
'h01A3,      // 476
'h0064,      // 477
'h0118,      // 478
'h0076,      // 479
'h00CA,      // 480
'h00D0,      // 481
'h01B6,      // 482
'h0149,      // 483
'h01D7,      // 484
'h014C,      // 485
'h01C3,      // 486
'h00ED,      // 487
'h0194,      // 488
'h012F,      // 489
'h00E3,      // 490
'h0074,      // 491
'h01BD,      // 492
'h01C7,      // 493
'h0143,      // 494
'h0121,      // 495
'h003C,      // 496
'h017B,      // 497
'h0109,      // 498
'h0014,      // 499
'h0138,      // 500
'h00FE,      // 501
'h01F2,      // 502
'h0049,      // 503
'h011A,      // 504
'h01A4,      // 505
'h011D,      // 506
'h0059,      // 507
'h006A,      // 508
'h015D,      // 509
'h01C8,      // 510
'h007E,      // 511
'h01FA      // 512
};


//assign data = (ce && read_en) ? mem[address] : 8'b0;
always @ (posedge clk) begin
    
    data = mem[address];
    address = address + 1;
    
end

initial begin
  $readmemb("D:/Documents/Verilog/ROM/ROM.srcs/sources_1/new/memory.list",mem);
end


endmodule


module rom_tb;
 reg clk;
 wire [7:0] data;
 integer i, f;
 
 initial begin
    f = $fopen("D:/Documents/Verilog/ROM/ROM.srcs/sources_1/new/output.txt","w");
   clk = 0;

   #10 $monitor ("data = %h, clk = %b", data, clk);
   
   for (i = 0; i <10; i = i +1 )begin
     #5;
     clk = 1;
     #5;
     $fwrite(f, "%010x\n", data);
     clk = 0;
   end
   
   $fclose(f);
 end
 
rom U(
data    , // Data output
clk       // Clock
);

endmodule


