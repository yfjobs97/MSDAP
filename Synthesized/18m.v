`timescale 1ns/1ps
`celldefine
module ADDFX1M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFX1M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFX2M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFX2M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFX4M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFX4M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFX8M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFX8M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFXLM ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFXLM
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFHX1M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFHX1M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFHX2M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFHX2M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFHX4M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFHX4M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFHX8M ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFHX8M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDFHXLM ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule // ADDFHXLM
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDHX1M ( S, CO, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0;


     if (B == 1'b1)
	(A *> S) = (tplh$A$S,  tphl$A$S);
     if (B == 1'b0)
	(A *> S)  = (tplh$A$S,  tphl$A$S);
     if (A == 1'b1)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     if (A == 1'b0)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     (A *> CO) = (tplh$A$CO, tphl$A$CO);
     (B *> CO) = (tplh$B$CO, tphl$B$CO);

  endspecify
endmodule // ADDHX1M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDHX2M ( S, CO, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0;


     if (B == 1'b1)
	(A *> S) = (tplh$A$S,  tphl$A$S);
     if (B == 1'b0)
	(A *> S)  = (tplh$A$S,  tphl$A$S);
     if (A == 1'b1)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     if (A == 1'b0)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     (A *> CO) = (tplh$A$CO, tphl$A$CO);
     (B *> CO) = (tplh$B$CO, tphl$B$CO);

  endspecify
endmodule // ADDHX2M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDHX4M ( S, CO, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0;


     if (B == 1'b1)
	(A *> S) = (tplh$A$S,  tphl$A$S);
     if (B == 1'b0)
	(A *> S)  = (tplh$A$S,  tphl$A$S);
     if (A == 1'b1)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     if (A == 1'b0)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     (A *> CO) = (tplh$A$CO, tphl$A$CO);
     (B *> CO) = (tplh$B$CO, tphl$B$CO);

  endspecify
endmodule // ADDHX4M
`endcelldefine
//$Id: add.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module ADDHX8M ( S, CO, A, B);
output S, CO;
input A, B;
  xor I0(S, A, B);
  and I1(CO, A, B);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0;


     if (B == 1'b1)
	(A *> S) = (tplh$A$S,  tphl$A$S);
     if (B == 1'b0)
	(A *> S)  = (tplh$A$S,  tphl$A$S);
     if (A == 1'b1)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     if (A == 1'b0)
	(B *> S)  = (tplh$B$S,  tphl$B$S);
     (A *> CO) = (tplh$A$CO, tphl$A$CO);
     (B *> CO) = (tplh$B$CO, tphl$B$CO);

  endspecify
endmodule // ADDHX8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND2X12M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // AND2X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND2X1M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // AND2X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND2X2M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // AND2X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND2X4M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // AND2X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND2X6M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // AND2X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND2X8M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // AND2X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3X12M (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3X1M (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3X2M (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3X4M (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3X6M (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3X8M (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND3XLM (Y, A, B, C);
output Y;
input A, B, C;

  and (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // AND3XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4X12M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4X1M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4X2M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4X4M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4X6M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4X8M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AND4XLM (Y, A, B, C, D);
output Y;
input A, B, C, D;

  and (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // AND4XLM
`endcelldefine
//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO21X1M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  or I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AO21X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO21X2M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  or I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AO21X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO21X4M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  or I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AO21X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO21X8M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  or I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AO21X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO21XLM (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  or I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AO21XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO22X1M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  or I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO22X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO22X2M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  or I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO22X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO22X4M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  or I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO22X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO22X8M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  or I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO22X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO22XLM (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  or I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO22XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2X1M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  and I2 (outB, B0, B1);
  or I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO2B2X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2X2M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  and I2 (outB, B0, B1);
  or I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO2B2X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2X4M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  and I2 (outB, B0, B1);
  or I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO2B2X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2XLM (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  and I2 (outB, B0, B1);
  or I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AO2B2XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2BX1M (Y, A0, A1N, B0, B1N);
output Y;
input A0, A1N, B0, B1N;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  not I2 (outB1, B1N);
  and I3 (outB, B0, outB1);
  or I4 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1N$Y = 1.0,
      tphl$B1N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1N *> Y) = (tplh$B1N$Y, tphl$B1N$Y);
  endspecify
endmodule // AO2B2BX1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2BX2M (Y, A0, A1N, B0, B1N);
output Y;
input A0, A1N, B0, B1N;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  not I2 (outB1, B1N);
  and I3 (outB, B0, outB1);
  or I4 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1N$Y = 1.0,
      tphl$B1N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1N *> Y) = (tplh$B1N$Y, tphl$B1N$Y);
  endspecify
endmodule // AO2B2BX2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2BX4M (Y, A0, A1N, B0, B1N);
output Y;
input A0, A1N, B0, B1N;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  not I2 (outB1, B1N);
  and I3 (outB, B0, outB1);
  or I4 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1N$Y = 1.0,
      tphl$B1N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1N *> Y) = (tplh$B1N$Y, tphl$B1N$Y);
  endspecify
endmodule // AO2B2BX4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AO2B2BXLM (Y, A0, A1N, B0, B1N);
output Y;
input A0, A1N, B0, B1N;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  not I2 (outB1, B1N);
  and I3 (outB, B0, outB1);
  or I4 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1N$Y = 1.0,
      tphl$B1N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1N *> Y) = (tplh$B1N$Y, tphl$B1N$Y);
  endspecify
endmodule // AO2B2BXLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI211X1M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI211X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI211X2M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI211X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI211X4M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI211X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI211XLM (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI211XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21X1M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21X2M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21X3M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21X3M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21X4M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21X6M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21X6M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21X8M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21XLM (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  and I0(outA, A0, A1);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI21XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21BX1M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // AOI21BX1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21BX2M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // AOI21BX2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21BX4M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // AOI21BX4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21BX8M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // AOI21BX8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI21BXLM (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  and I0(outA, A0, A1);
  not I1 (outB, B0N);
  nor I3 (Y,outA,outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // AOI21BXLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI221X1M (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI221X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI221X2M (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI221X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI221X4M (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI221X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI221XLM (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // AOI221XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI222X1M (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // AOI222X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI222X2M (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // AOI222X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI222X4M (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // AOI222X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI222XLM (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  and I2(outC, C0, C1);
  nor I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // AOI222XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI22X1M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI22X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI22X2M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI22X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI22X4M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI22X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI22XLM (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  and I0(outA, A0, A1);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI22XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2B1X1M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2B1X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2B1X2M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2B1X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2B1X4M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2B1X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2B1X8M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2B1X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2B1XLM (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not I0 (outA1, A1N);
  and I1 (outA, A0, outA1);
  nor I2(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2B1XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB1X1M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nor I0 (outA, A0N, A1N);
  nor I1 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2BB1X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB1X2M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nor I0 (outA, A0N, A1N);
  nor I1 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2BB1X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB1X4M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nor I0 (outA, A0N, A1N);
  nor I1 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2BB1X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB1X8M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nor I0 (outA, A0N, A1N);
  nor I1 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2BB1X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB1XLM (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nor I0 (outA, A0N, A1N);
  nor I1 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI2BB1XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB2X1M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI2BB2X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB2X2M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI2BB2X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB2X4M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI2BB2X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB2X8M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI2BB2X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI2BB2XLM (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nor I0 (outA, A0N, A1N);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI2BB2XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI31X1M (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI31X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI31X2M (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI31X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI31X4M (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI31X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI31XLM (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  and I0(outA, A0, A1, A2);
  nor I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // AOI31XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI32X1M (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI32X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI32X2M (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI32X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI32X4M (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI32X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI32XLM (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // AOI32XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI33X1M (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // AOI33X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI33X2M (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // AOI33X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI33X4M (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // AOI33X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module AOI33XLM (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  and I0(outA, A0, A1, A2);
  and I1(outB, B0, B1, B2);
  nor I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // AOI33XLM
`endcelldefine





//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX10M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX10M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX12M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX12M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX14M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX14M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX16M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX16M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX18M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX18M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX20M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX20M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX24M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX24M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX2M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX2M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX32M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX32M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX3M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX3M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX4M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX5M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX5M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX6M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX6M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module BUFX8M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // BUFX8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X12M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X16M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X16M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X2M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X3M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X3M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X4M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X6M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKAND2X8M (Y, A, B);
output Y;
input A, B;

  and (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKAND2X8M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX12M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX12M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX16M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX16M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX1M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX20M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX20M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX24M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX24M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX2M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX2M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX32M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX32M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX3M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX3M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX40M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX40M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX4M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX6M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX6M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKBUFX8M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKBUFX8M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX12M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX12M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX16M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX16M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX1M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX20M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX20M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX24M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX24M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX2M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX2M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX32M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX32M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX3M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX3M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX40M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX40M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX4M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX6M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX6M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKINVX8M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKINVX8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X12M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X12M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X16M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X16M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X2M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X3M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X3M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X4M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X6M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X6M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKMX2X8M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // CLKMX2X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKNAND2X12M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKNAND2X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKNAND2X16M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKNAND2X16M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKNAND2X2M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKNAND2X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKNAND2X4M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKNAND2X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKNAND2X8M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKNAND2X8M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKXOR2X12M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKXOR2X12M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKXOR2X16M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKXOR2X16M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKXOR2X2M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKXOR2X2M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKXOR2X4M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKXOR2X4M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module CLKXOR2X8M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // CLKXOR2X8M
`endcelldefine
//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFX1M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFX2M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFX4M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHX1M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHX2M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHX4M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHX8M (Q, QN, D, CK);
output Q, QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQX1M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQX2M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQX4M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQX8M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQNX1M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQNX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQNX2M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQNX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQNX4M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQNX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFHQNX8M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFHQNX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNHX1M (Q, QN, D, CKN);
output Q, QN;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);

   endspecify
endmodule // DFFNHX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNHX2M (Q, QN, D, CKN);
output Q, QN;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);

   endspecify
endmodule // DFFNHX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNHX4M (Q, QN, D, CKN);
output Q, QN;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);

   endspecify
endmodule // DFFNHX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNHX8M (Q, QN, D, CKN);
output Q, QN;
input  D, CKN;
reg NOTIFIER;
supply1 xSN,xRN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);

   endspecify
endmodule // DFFNHX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNSRHX1M (Q, QN, D, CKN, SN, RN);
output Q, QN;
input  D, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tsetup$SN$CKN    = 1.0,
    thold$SN$CKN    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CKN    = 1.0,
    thold$RN$CKN    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN, thold$RN$CKN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN, thold$SN$CKN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFNSRHX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNSRHX2M (Q, QN, D, CKN, SN, RN);
output Q, QN;
input  D, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tsetup$SN$CKN    = 1.0,
    thold$SN$CKN    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CKN    = 1.0,
    thold$RN$CKN    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN, thold$RN$CKN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN, thold$SN$CKN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFNSRHX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNSRHX4M (Q, QN, D, CKN, SN, RN);
output Q, QN;
input  D, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tsetup$SN$CKN    = 1.0,
    thold$SN$CKN    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CKN    = 1.0,
    thold$RN$CKN    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN, thold$RN$CKN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN, thold$SN$CKN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFNSRHX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFNSRHX8M (Q, QN, D, CKN, SN, RN);
output Q, QN;
input  D, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CKN$Q	= 1.0,
    tphl$CKN$Q	= 1.0,
    tplh$CKN$QN	= 1.0,
    tphl$CKN$QN	= 1.0,
    tsetup$D$CKN	= 1.0,
    thold$D$CKN	= 0.5,
    tsetup$SN$CKN    = 1.0,
    thold$SN$CKN    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CKN    = 1.0,
    thold$RN$CKN    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CKN    = 1.0,
    tminpwh$CKN    = 1.0,
    tperiod$CKN    = 1.0;

    if (flag)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (flag)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    $setuphold(negedge CKN &&& (flag == 1), posedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge D, tsetup$D$CKN, thold$D$CKN, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN, thold$RN$CKN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN, thold$SN$CKN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CKN &&& (flag == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (flag == 1), tminpwh$CKN, 0, NOTIFIER); 
    $period(posedge CKN &&& (flag == 1), tperiod$CKN, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFNSRHX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFQX1M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFQX2M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFQX4M (Q, D, CK);
output Q;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFQNX1M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFQNX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFQNX2M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFQNX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFQNX4M (QN, D, CK);
output QN;
input  D, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFQNX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRX1M (Q, QN, D, CK, RN);
output Q, QN;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRX2M (Q, QN, D, CK, RN);
output Q, QN;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRX4M (Q, QN, D, CK, RN);
output Q, QN;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRHQX1M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRHQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRHQX2M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRHQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRHQX4M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRHQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRHQX8M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRHQX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRQX1M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRQX2M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFRQX4M (Q, D, CK, RN);
output Q;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFRQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSX1M (Q, QN, D, CK, SN);
output Q, QN;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSX2M (Q, QN, D, CK, SN);
output Q, QN;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSX4M (Q, QN, D, CK, SN);
output Q, QN;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSHQX1M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSHQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSHQX2M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSHQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSHQX4M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSHQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSHQX8M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSHQX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSQX1M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSQX2M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSQX4M (Q, D, CK, SN);
output Q;
input  D, CK, SN;
reg NOTIFIER;
supply1 xRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // DFFSQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRX1M (Q, QN, D, CK, SN, RN);
output Q, QN;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRX2M (Q, QN, D, CK, SN, RN);
output Q, QN;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRX4M (Q, QN, D, CK, SN, RN);
output Q, QN;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$SN$QN  = 1.0,
    tphl$SN$QN  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN,   tphl$CK$QN);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
      (negedge RN *> (QN -: 1'b0)) = (tplh$RN$QN);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
      (negedge SN *> (QN -: 1'b1)) = (tphl$SN$QN);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRHQX1M (Q, D, CK, SN, RN);
output Q;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRHQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRHQX2M (Q, D, CK, SN, RN);
output Q;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRHQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRHQX4M (Q, D, CK, SN, RN);
output Q;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRHQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFSRHQX8M (Q, D, CK, SN, RN);
output Q;
input  D, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xSN, SN);
  buf   XX1 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, D, clk, xRN, xSN, NOTIFIER);
  and     I4 (flag, xRN, xSN);
  buf     I1 (Q, n0);

  specify
    specparam
    tplh$SN$Q  = 1.0,
    tphl$SN$Q  = 1.0,
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    tsetup$SN$CK    = 1.0,
    thold$SN$CK    = 0.5,
    tminpwl$SN     = 1.0,
    tsetup$RN$CK    = 1.0,
    thold$RN$CK    = 0.5,
    tminpwl$RN     = 1.0,
    thold$RN$SN = 1.0,
    thold$SN$RN = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag)
      (posedge CK *> (Q +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    $setuphold(posedge CK &&& (flag == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
      (negedge RN *> (Q +: 1'b0)) = (tphl$RN$Q);
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
      (negedge SN *> (Q +: 1'b1)) = (tplh$SN$Q);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK, thold$SN$CK, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER); 
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    

   endspecify
endmodule // DFFSRHQX8M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFTRX1M (Q, QN, D, CK, RN);
output Q, QN;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN, EN,flag;

  buf   XX0 (xRN, RN);
  and F0 (rn_and_sn, xRN,xSN);
  buf     IC (clk, CK);
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER);
  buf     I1 (Q, n0);
  and     I4 (Deff, D, xRN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    thold$RN$CK = 0.5,
    tsetup$RN$CK = 1.0,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;

    (posedge CK *> (Q  +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
    (posedge CK *> (QN -: Deff)) = (tplh$CK$QN, tphl$CK$QN);
 
    // timing checks
    $setuphold(posedge CK &&& (rn_and_sn == 1), posedge D,  tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (rn_and_sn == 1), negedge D,  tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (xSN == 1), posedge RN , tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $setuphold(posedge CK &&& (xSN == 1), negedge RN , tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);


   endspecify
endmodule // DFFTRX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFTRX2M (Q, QN, D, CK, RN);
output Q, QN;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN, EN,flag;

  buf   XX0 (xRN, RN);
  and F0 (rn_and_sn, xRN,xSN);
  buf     IC (clk, CK);
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER);
  buf     I1 (Q, n0);
  and     I4 (Deff, D, xRN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    thold$RN$CK = 0.5,
    tsetup$RN$CK = 1.0,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;

    (posedge CK *> (Q  +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
    (posedge CK *> (QN -: Deff)) = (tplh$CK$QN, tphl$CK$QN);
 
    // timing checks
    $setuphold(posedge CK &&& (rn_and_sn == 1), posedge D,  tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (rn_and_sn == 1), negedge D,  tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (xSN == 1), posedge RN , tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $setuphold(posedge CK &&& (xSN == 1), negedge RN , tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);


   endspecify
endmodule // DFFTRX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DFFTRX4M (Q, QN, D, CK, RN);
output Q, QN;
input  D, CK, RN;
reg NOTIFIER;
supply1 xSN, EN,flag;

  buf   XX0 (xRN, RN);
  and F0 (rn_and_sn, xRN,xSN);
  buf     IC (clk, CK);
  udp_edfft I0 (n0, D, clk, xRN, xSN, EN, NOTIFIER);
  buf     I1 (Q, n0);
  and     I4 (Deff, D, xRN);
  not     I2 (QN, n0);

  specify
    specparam
    tplh$RN$Q  = 1.0,
    tphl$RN$Q  = 1.0,
    tplh$RN$QN  = 1.0,
    tphl$RN$QN  = 1.0,
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tplh$CK$QN	= 1.0,
    tphl$CK$QN	= 1.0,
    tsetup$D$CK	= 1.0,
    thold$D$CK	= 0.5,
    thold$RN$CK = 0.5,
    tsetup$RN$CK = 1.0,
    tminpwl$RN     = 1.0,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;

    (posedge CK *> (Q  +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
    (posedge CK *> (QN -: Deff)) = (tplh$CK$QN, tphl$CK$QN);
 
    // timing checks
    $setuphold(posedge CK &&& (rn_and_sn == 1), posedge D,  tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (rn_and_sn == 1), negedge D,  tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (xSN == 1), posedge RN , tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $setuphold(posedge CK &&& (xSN == 1), negedge RN , tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);


   endspecify
endmodule // DFFTRX4M
`endcelldefine


//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY1X1M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY1X1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY1X4M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY1X4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY2X1M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY2X1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY2X4M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY2X4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY3X1M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY3X1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY3X4M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY3X4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY4X1M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY4X1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module DLY4X4M (Y, A);
output Y;
input A;

  buf I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // DLY4X4M
`endcelldefine
//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFX1M (Q, QN, D, CK, E);
output Q, QN;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  not      I1 (QN, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
        (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFX1M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFX2M (Q, QN, D, CK, E);
output Q, QN;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  not      I1 (QN, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
        (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFX2M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFX4M (Q, QN, D, CK, E);
output Q, QN;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  not      I1 (QN, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
        (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFX4M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFHQX1M (Q, D, CK, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFHQX1M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFHQX2M (Q, D, CK, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFHQX2M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFHQX4M (Q, D, CK, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFHQX4M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFHQX8M (Q, D, CK, E);
output Q;
input D, CK, E;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

  udp_edff I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     B1 (Q, n0);
  and      I2 (flag, xRN, xSN);
  and      I3 (Dcheck, xSN, xRN, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (Dcheck)
        (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $width(negedge CK &&& (flag == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (flag == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (flag == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFHQX8M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFTRX1M (Q, QN, D, CK, E, RN);
output Q, QN;
input D, CK, E, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX1 (xRN, RN);

  udp_edfft I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  and     I3 (Deff, xRN, D);
  and     I4 (Dcheck,E,xRN);
  and     I5 (check,E, D);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
    (posedge CK *> (Q  +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
    (posedge CK *> (QN -: Deff)) = (tplh$CK$QN, tphl$CK$QN);   
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK, posedge E &&& (RN == 1), tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E &&& (RN == 1), tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $setuphold(posedge CK, negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFTRX1M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFTRX2M (Q, QN, D, CK, E, RN);
output Q, QN;
input D, CK, E, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX1 (xRN, RN);

  udp_edfft I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  and     I3 (Deff, xRN, D);
  and     I4 (Dcheck,E,xRN);
  and     I5 (check,E, D);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
    (posedge CK *> (Q  +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
    (posedge CK *> (QN -: Deff)) = (tplh$CK$QN, tphl$CK$QN);   
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK, posedge E &&& (RN == 1), tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E &&& (RN == 1), tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $setuphold(posedge CK, negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFTRX2M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module EDFFTRX4M (Q, QN, D, CK, E, RN);
output Q, QN;
input D, CK, E, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX1 (xRN, RN);

  udp_edfft I0 (n0, D, CK, xRN, xSN, E, NOTIFIER);
  buf     I1 (Q, n0);
  not     I2 (QN, n0);
  and     I3 (Deff, xRN, D);
  and     I4 (Dcheck,E,xRN);
  and     I5 (check,E, D);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
    (posedge CK *> (Q  +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
    (posedge CK *> (QN -: Deff)) = (tplh$CK$QN, tphl$CK$QN);   
     // timing checks
    $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
    $setuphold(posedge CK, posedge E &&& (RN == 1), tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E &&& (RN == 1), tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
    $setuphold(posedge CK, negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);
  endspecify
endmodule // EDFFTRX4M
`endcelldefine


//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module HOLDX1M (Y);
inout Y;

wire io_wire;

  buf(weak0,weak1) I0(Y, io_wire);
  buf              I1(io_wire, Y);

endmodule // HOLDX1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX10M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX10M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX12M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX12M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX14M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX14M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX16M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX16M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX18M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX18M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX1M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX20M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX20M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX24M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX24M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX2M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX2M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX32M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX32M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX3M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX3M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX4M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX5M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX5M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX6M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX6M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVX8M (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVX8M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module INVXLM (Y, A);
output Y;
input A;

  not I0(Y, A);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // INVXLM
`endcelldefine
//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MDFFHQX1M (Q, D0, D1, S0, CK);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  not      I2 (nsel,S0);
  and      I3 (flag0, xRN, xSN, nsel);
  and      I4 (flag1, xRN, xSN, S0);
  buf      I5 (Q, n0);
  xor      I6 (D0xorD1, D0, D1);
  and      I7 (flag, D0xorD1, xRN, xSN);
  and      I8 (SandR,xRN, xSN);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D0$CK	= 1.0,
    thold$D0$CK	= 0.5,
    tsetup$D1$CK	= 1.0,
    thold$D1$CK	= 0.5,
    tsetup$S0$CK	= 1.0,
    thold$S0$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag0)
      (posedge CK *> (Q +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag1)
      (posedge CK *> (Q +: D1)) = (tplh$CK$Q,    tphl$CK$Q);

    $setuphold(posedge CK &&& (flag0 == 1), posedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // MDFFHQX1M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MDFFHQX2M (Q, D0, D1, S0, CK);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  not      I2 (nsel,S0);
  and      I3 (flag0, xRN, xSN, nsel);
  and      I4 (flag1, xRN, xSN, S0);
  buf      I5 (Q, n0);
  xor      I6 (D0xorD1, D0, D1);
  and      I7 (flag, D0xorD1, xRN, xSN);
  and      I8 (SandR,xRN, xSN);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D0$CK	= 1.0,
    thold$D0$CK	= 0.5,
    tsetup$D1$CK	= 1.0,
    thold$D1$CK	= 0.5,
    tsetup$S0$CK	= 1.0,
    thold$S0$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag0)
      (posedge CK *> (Q +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag1)
      (posedge CK *> (Q +: D1)) = (tplh$CK$Q,    tphl$CK$Q);

    $setuphold(posedge CK &&& (flag0 == 1), posedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // MDFFHQX2M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MDFFHQX4M (Q, D0, D1, S0, CK);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  not      I2 (nsel,S0);
  and      I3 (flag0, xRN, xSN, nsel);
  and      I4 (flag1, xRN, xSN, S0);
  buf      I5 (Q, n0);
  xor      I6 (D0xorD1, D0, D1);
  and      I7 (flag, D0xorD1, xRN, xSN);
  and      I8 (SandR,xRN, xSN);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D0$CK	= 1.0,
    thold$D0$CK	= 0.5,
    tsetup$D1$CK	= 1.0,
    thold$D1$CK	= 0.5,
    tsetup$S0$CK	= 1.0,
    thold$S0$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag0)
      (posedge CK *> (Q +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag1)
      (posedge CK *> (Q +: D1)) = (tplh$CK$Q,    tphl$CK$Q);

    $setuphold(posedge CK &&& (flag0 == 1), posedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // MDFFHQX4M
`endcelldefine


//$Id: dff.genpp,v 1.7 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MDFFHQX8M (Q, D0, D1, S0, CK);
output Q;
input  D0, D1, S0, CK;
reg NOTIFIER;
supply1 xSN,xRN;
  buf     IC (clk, CK);
  udp_mux2 I0 (nm, D0, D1, S0);
  udp_dff  I1 (n0, nm, clk, xRN, xSN, NOTIFIER);
  not      I2 (nsel,S0);
  and      I3 (flag0, xRN, xSN, nsel);
  and      I4 (flag1, xRN, xSN, S0);
  buf      I5 (Q, n0);
  xor      I6 (D0xorD1, D0, D1);
  and      I7 (flag, D0xorD1, xRN, xSN);
  and      I8 (SandR,xRN, xSN);

  specify
    specparam
    tplh$CK$Q	= 1.0,
    tphl$CK$Q	= 1.0,
    tsetup$D0$CK	= 1.0,
    thold$D0$CK	= 0.5,
    tsetup$D1$CK	= 1.0,
    thold$D1$CK	= 0.5,
    tsetup$S0$CK	= 1.0,
    thold$S0$CK	= 0.5,
    tminpwl$CK    = 1.0,
    tminpwh$CK    = 1.0,
    tperiod$CK    = 1.0;


    if (flag0)
      (posedge CK *> (Q +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if (flag1)
      (posedge CK *> (Q +: D1)) = (tplh$CK$Q,    tphl$CK$Q);

    $setuphold(posedge CK &&& (flag0 == 1), posedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge D0, tsetup$D0$CK, thold$D0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge D1, tsetup$D1$CK, thold$D1$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge S0, tsetup$S0$CK, thold$S0$CK, NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);

   endspecify
endmodule // MDFFHQX8M
`endcelldefine


//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X12M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X12M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X1M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X2M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X3M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X3M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X4M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X6M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X6M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2X8M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2X8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX2XLM (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(Y, A, B, S0);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX2XLM
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX3X1M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(Y, A, B, C, C, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX3X1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX3X2M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(Y, A, B, C, C, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX3X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX3X4M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(Y, A, B, C, C, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX3X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX3X8M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(Y, A, B, C, C, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX3X8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX3XLM (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(Y, A, B, C, C, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX3XLM
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX4X1M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(Y, A, B, C, D, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX4X1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX4X2M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(Y, A, B, C, D, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX4X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX4X4M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(Y, A, B, C, D, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX4X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX4X8M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(Y, A, B, C, D, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX4X8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MX4XLM (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(Y, A, B, C, D, S0, S1);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MX4XLM
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X12M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X12M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X1M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X2M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X3M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X3M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X4M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X6M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X6M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2X8M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2X8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2XLM (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2XLM
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2DX1M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2DX1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2DX2M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2DX2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2DX4M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2DX4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2DX8M (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2DX8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI2DXLM (Y, A, B, S0);
output Y;
input A, B, S0;

  udp_mux2 u0(YN, A, B, S0);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0;
    // path delays
     if ((A == 1'b1) && (B == 1'b0))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if ((A == 1'b0) && (B == 1'b1))
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI2DXLM
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI3X1M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(YN,A, B, C, C, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI3X1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI3X2M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(YN,A, B, C, C, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI3X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI3X4M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(YN,A, B, C, C, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI3X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI3X8M (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(YN,A, B, C, C, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI3X8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI3XLM (Y, A, B, C, S0, S1);
output Y;
input A, B, C, S0, S1;

  udp_mux4 u0(YN,A, B, C, C, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && C == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && C == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI3XLM
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI4X1M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(YN, A, B, C, D, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI4X1M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI4X2M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(YN, A, B, C, D, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI4X2M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI4X4M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(YN, A, B, C, D, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI4X4M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI4X8M (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(YN, A, B, C, D, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI4X8M
`endcelldefine
//$Id: mux.genpp,v 1.4 2004/06/14 11:13:57 saravana Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module MXI4XLM (Y, A, B, C, D, S0, S1);
output Y;
input A, B, C, D, S0, S1;

  udp_mux4 u0(YN, A, B, C, D, S0, S1);
  not      u1(Y, YN);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0,
      tplh$S0$Y = 1.0,
      tphl$S0$Y = 1.0,
      tplh$S1$Y = 1.0,
      tphl$S1$Y = 1.0;
    // path delays
     if (A == 1'b1 && C == 1'b0 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b0 && C == 1'b1 && S0 == 1'b0)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b1 && D == 1'b0 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (B == 1'b0 && D == 1'b1 && S0 == 1'b1)
	(S1 *> Y) = (tplh$S1$Y, tphl$S1$Y);
     if (A == 1'b1 && B == 1'b0 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (A == 1'b0 && B == 1'b1 && S1 == 1'b0)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b1 && D == 1'b0 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     if (C == 1'b0 && D == 1'b1 && S1 == 1'b1)
	(S0 *> Y) = (tplh$S0$Y, tphl$S0$Y);
     (D *> Y) = (tplh$D$Y, tphl$D$Y);
     (C *> Y) = (tplh$C$Y, tphl$C$Y);
     (B *> Y) = (tplh$B$Y, tphl$B$Y);
     (A *> Y) = (tplh$A$Y, tphl$A$Y);
  endspecify

endmodule // MXI4XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X12M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X1M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X2M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X3M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X3M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X4M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X5M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X5M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X6M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2X8M (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2XLM (Y, A, B);
output Y;
input A, B;

  nand (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BX12M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2BX12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BX1M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2BX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BX2M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2BX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BX4M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2BX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BX8M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2BX8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND2BXLM (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nand (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NAND2BXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X12M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X1M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X2M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X3M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X3M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X4M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X6M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3X8M (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3XLM (Y, A, B, C);
output Y;
input A, B, C;

  nand (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3BX1M (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3BX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3BX2M (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3BX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3BX4M (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3BX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND3BXLM (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nand (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NAND3BXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4X12M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4X1M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4X2M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4X4M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4X6M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4X8M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4XLM (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nand (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BX1M (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BX2M (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BX4M (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BXLM (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nand (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BBX1M (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nand (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BBX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BBX2M (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nand (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BBX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BBX4M (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nand (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BBX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NAND4BBXLM (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nand (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NAND4BBXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X12M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X1M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X2M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X3M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X3M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X4M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X5M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X5M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X6M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2X8M (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2XLM (Y, A, B);
output Y;
input A, B;

  nor (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2BX12M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nor (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2BX12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2BX1M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nor (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2BX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2BX2M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nor (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2BX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2BX4M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nor (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2BX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2BX8M (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nor (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2BX8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR2BXLM (Y, AN, B);
output Y;
input AN, B;

  not (Ax, AN);
  nor (Y, Ax, B);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // NOR2BXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3X12M (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3X1M (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3X2M (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3X4M (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3X6M (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3X8M (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3XLM (Y, A, B, C);
output Y;
input A, B, C;

  nor (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3BX1M (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nor (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3BX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3BX2M (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nor (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3BX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3BX4M (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nor (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3BX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR3BXLM (Y, AN, B, C);
output Y;
input AN, B, C;

  not (Ax, AN);
  nor (Y, Ax, B, C);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // NOR3BXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4X12M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4X1M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4X2M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4X4M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4X6M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4X8M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4XLM (Y, A, B, C, D);
output Y;
input A, B, C, D;

  nor (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4XLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BX1M (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nor (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BX2M (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nor (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BX4M (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nor (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BXLM (Y, AN, B, C, D);
output Y;
input AN, B, C, D;

  not (Ax, AN);
  nor (Y, Ax, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BXLM
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BBX1M (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BBX1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BBX2M (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BBX2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BBX4M (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BBX4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module NOR4BBXLM (Y, AN, BN, C, D);
output Y;
input AN, BN, C, D;

  not (Bx, BN);
  not (Ax, AN);
  nor (Y, Ax, Bx, C, D);

  specify
    // delay parameters
    specparam
      tplh$AN$Y = 1.0,
      tphl$AN$Y = 1.0,
      tplh$BN$Y = 1.0,
      tphl$BN$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (AN *> Y) = (tplh$AN$Y, tphl$AN$Y);
    (BN *> Y) = (tplh$BN$Y, tphl$BN$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // NOR4BBXLM
`endcelldefine
//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA21X1M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OA21X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA21X2M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OA21X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA21X4M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OA21X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA21X8M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OA21X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA21XLM (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  and I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OA21XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA22X1M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  and I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OA22X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA22X2M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  and I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OA22X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA22X4M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  and I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OA22X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA22X8M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  and I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OA22X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OA22XLM (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  and I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OA22XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI211X1M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI211X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI211X2M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI211X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI211X4M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI211X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI211X8M (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI211X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI211XLM (Y, A0, A1, B0, C0);
output Y;
input A0, A1, B0, C0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, C0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI211XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21X1M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21X2M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21X3M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21X3M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21X4M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21X6M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21X6M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21X8M (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21XLM (Y, A0, A1, B0);
output Y;
input A0, A1, B0;

  or   I0(outA, A0, A1);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI21XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21BX1M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // OAI21BX1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21BX2M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // OAI21BX2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21BX4M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // OAI21BX4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21BX8M (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // OAI21BX8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI21BXLM (Y, A0, A1, B0N);
output Y;
input A0, A1, B0N;

  not  I0 (outB, B0N);
  or   I1 (outA, A0,  A1);
  nand I2 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0N$Y = 1.0,
      tphl$B0N$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0N *> Y) = (tplh$B0N$Y, tphl$B0N$Y);
  endspecify
endmodule // OAI21BXLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI221X1M (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI221X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI221X2M (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI221X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI221X4M (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI221X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI221XLM (Y, A0, A1, B0, B1, C0);
output Y;
input A0, A1, B0, B1, C0;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, C0, outB, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI221XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI222X1M (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // OAI222X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI222X2M (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // OAI222X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI222X4M (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // OAI222X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI222XLM (Y, A0, A1, B0, B1, C0, C1);
output Y;
input A0, A1, B0, B1, C0, C1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  or   I2(outC, C0, C1);
  nand I3(Y, outA, outB, outC);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0,
      tplh$C1$Y = 1.0,
      tphl$C1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
    (C1 *> Y) = (tplh$C1$Y, tphl$C1$Y);
  endspecify
endmodule // OAI222XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI22X1M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI22X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI22X2M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI22X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI22X4M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI22X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI22X8M (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI22X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI22XLM (Y, A0, A1, B0, B1);
output Y;
input A0, A1, B0, B1;

  or   I0(outA, A0, A1);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI22XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B11X1M (Y, A0, A1N, B0, C0);
output Y;
input A0, A1N, B0, C0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, outA, B0, C0);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI2B11X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B11X2M (Y, A0, A1N, B0, C0);
output Y;
input A0, A1N, B0, C0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, outA, B0, C0);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI2B11X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B11X4M (Y, A0, A1N, B0, C0);
output Y;
input A0, A1N, B0, C0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, outA, B0, C0);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI2B11X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B11XLM (Y, A0, A1N, B0, C0);
output Y;
input A0, A1N, B0, C0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, outA, B0, C0);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$C0$Y = 1.0,
      tphl$C0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (C0 *> Y) = (tplh$C0$Y, tphl$C0$Y);
  endspecify
endmodule // OAI2B11XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B1X1M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2B1X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B1X2M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2B1X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B1X4M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2B1X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B1X8M (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2B1X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B1XLM (Y, A0, A1N, B0);
output Y;
input A0, A1N, B0;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  nand I2 (Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2B1XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B2X1M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  or I2 (outB, B0, B1);
  nand I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2B2X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B2X2M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  or I2 (outB, B0, B1);
  nand I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2B2X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B2X4M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  or I2 (outB, B0, B1);
  nand I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2B2X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B2X8M (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  or I2 (outB, B0, B1);
  nand I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2B2X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2B2XLM (Y, A0, A1N, B0, B1);
output Y;
input A0, A1N, B0, B1;

  not  I0 (outA1, A1N);
  or   I1 (outA, A0, outA1);
  or I2 (outB, B0, B1);
  nand I3 (Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2B2XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB1X1M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nand I0 (outA, A0N, A1N);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2BB1X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB1X2M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nand I0 (outA, A0N, A1N);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2BB1X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB1X4M (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nand I0 (outA, A0N, A1N);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2BB1X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB1XLM (Y, A0N, A1N, B0);
output Y;
input A0N, A1N, B0;

  nand I0 (outA, A0N, A1N);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI2BB1XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB2X1M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nand I0 (outA, A0N, A1N);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2BB2X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB2X2M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nand I0 (outA, A0N, A1N);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2BB2X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB2X4M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nand I0 (outA, A0N, A1N);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2BB2X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB2X8M (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nand I0 (outA, A0N, A1N);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2BB2X8M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI2BB2XLM (Y, A0N, A1N, B0, B1);
output Y;
input A0N, A1N, B0, B1;

  nand I0 (outA, A0N, A1N);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0N$Y = 1.0,
      tphl$A0N$Y = 1.0,
      tplh$A1N$Y = 1.0,
      tphl$A1N$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0N *> Y) = (tplh$A0N$Y, tphl$A0N$Y);
    (A1N *> Y) = (tplh$A1N$Y, tphl$A1N$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI2BB2XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI31X1M (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI31X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI31X2M (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI31X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI31X4M (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI31X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI31XLM (Y, A0, A1, A2, B0);
output Y;
input A0, A1, A2, B0;

  or   I0(outA, A0, A1, A2);
  nand I1(Y, B0, outA);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
  endspecify
endmodule // OAI31XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI32X1M (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI32X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI32X2M (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI32X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI32X4M (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI32X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI32XLM (Y, A0, A1, A2, B0, B1);
output Y;
input A0, A1, A2, B0, B1;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
  endspecify
endmodule // OAI32XLM
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI33X1M (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1, B2);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // OAI33X1M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI33X2M (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1, B2);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // OAI33X2M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI33X4M (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1, B2);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // OAI33X4M
`endcelldefine





//$Id: aoi.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OAI33XLM (Y, A0, A1, A2, B0, B1, B2);
output Y;
input A0, A1, A2, B0, B1, B2;

  or   I0(outA, A0, A1, A2);
  or   I1(outB, B0, B1, B2);
  nand I2(Y, outA, outB);

  specify
    // delay parameters
    specparam
      tplh$A0$Y = 1.0,
      tphl$A0$Y = 1.0,
      tplh$A1$Y = 1.0,
      tphl$A1$Y = 1.0,
      tplh$A2$Y = 1.0,
      tphl$A2$Y = 1.0,
      tplh$B0$Y = 1.0,
      tphl$B0$Y = 1.0,
      tplh$B1$Y = 1.0,
      tphl$B1$Y = 1.0,
      tplh$B2$Y = 1.0,
      tphl$B2$Y = 1.0;

    // path delays
    (A0 *> Y) = (tplh$A0$Y, tphl$A0$Y);
    (A1 *> Y) = (tplh$A1$Y, tphl$A1$Y);
    (A2 *> Y) = (tplh$A2$Y, tphl$A2$Y);
    (B0 *> Y) = (tplh$B0$Y, tphl$B0$Y);
    (B1 *> Y) = (tplh$B1$Y, tphl$B1$Y);
    (B2 *> Y) = (tplh$B2$Y, tphl$B2$Y);
  endspecify
endmodule // OAI33XLM
`endcelldefine





//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR2X12M (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // OR2X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR2X1M (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // OR2X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR2X2M (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // OR2X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR2X4M (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // OR2X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR2X6M (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // OR2X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR2X8M (Y, A, B);
output Y;
input A, B;

  or (Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // OR2X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR3X12M (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // OR3X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR3X1M (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // OR3X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR3X2M (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // OR3X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR3X4M (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // OR3X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR3X6M (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // OR3X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR3X8M (Y, A, B, C);
output Y;
input A, B, C;

  or (Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // OR3X8M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR4X12M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // OR4X12M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR4X1M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // OR4X1M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR4X2M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // OR4X2M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR4X4M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // OR4X4M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR4X6M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // OR4X6M
`endcelldefine
//$Id: comb.genpp,v 1.2 2004/02/20 18:55:07 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module OR4X8M (Y, A, B, C, D);
output Y;
input A, B, C, D;

  or (Y, A, B, C, D);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0,
      tplh$D$Y = 1.0,
      tphl$D$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (B *> Y) = (tplh$B$Y, tphl$B$Y);
    (C *> Y) = (tplh$C$Y, tphl$C$Y);
    (D *> Y) = (tplh$D$Y, tphl$D$Y);
  endspecify

endmodule // OR4X8M
`endcelldefine
//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFX1M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFX2M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFX4M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHX1M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHX2M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHX4M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHX8M (Q, QN, D, SI, SE, CK);
output Q, QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQX1M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQX2M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQX4M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQX8M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQNX1M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQNX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQNX2M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQNX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQNX4M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQNX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFHQNX8M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFHQNX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNHX1M (Q, QN, D, SI, SE, CKN);
output Q, QN;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
endspecify
endmodule // SDFFNHX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNHX2M (Q, QN, D, SI, SE, CKN);
output Q, QN;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
endspecify
endmodule // SDFFNHX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNHX4M (Q, QN, D, SI, SE, CKN);
output Q, QN;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
endspecify
endmodule // SDFFNHX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNHX8M (Q, QN, D, SI, SE, CKN);
output Q, QN;
input D, SI, SE, CKN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
endspecify
endmodule // SDFFNHX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNSRHX1M (Q, QN, D, SI, SE, CKN, SN, RN);
output Q, QN;
input D, SI, SE, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CKN = 1.0,
      thold$SN$CKN = 0.5,
      tsetup$RN$CKN = 1.0,
      thold$RN$CKN = 0.5,
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN ,thold$SN$CKN , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN ,thold$RN$CKN , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFNSRHX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNSRHX2M (Q, QN, D, SI, SE, CKN, SN, RN);
output Q, QN;
input D, SI, SE, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CKN = 1.0,
      thold$SN$CKN = 0.5,
      tsetup$RN$CKN = 1.0,
      thold$RN$CKN = 0.5,
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN ,thold$SN$CKN , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN ,thold$RN$CKN , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFNSRHX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNSRHX4M (Q, QN, D, SI, SE, CKN, SN, RN);
output Q, QN;
input D, SI, SE, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CKN = 1.0,
      thold$SN$CKN = 0.5,
      tsetup$RN$CKN = 1.0,
      thold$RN$CKN = 0.5,
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN ,thold$SN$CKN , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN ,thold$RN$CKN , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFNSRHX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFNSRHX8M (Q, QN, D, SI, SE, CKN, SN, RN);
output Q, QN;
input D, SI, SE, CKN, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  not     IC (clk, CKN);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CKN = 1.0,
      thold$SN$CKN = 0.5,
      tsetup$RN$CKN = 1.0,
      thold$RN$CKN = 0.5,
      tplh$CKN$Q = 1.0,
      tphl$CKN$Q = 1.0,
      tplh$CKN$QN = 1.0,
      tphl$CKN$QN = 1.0,
      tsetup$D$CKN = 1.0,
      thold$D$CKN = 0.5,
      tsetup$SI$CKN = 1.0,
      thold$SI$CKN = 0.5,
      tsetup$SE$CKN = 1.0,
      thold$SE$CKN = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CKN = 1.0,
      tminpwh$CKN = 1.0,
      tperiod$CKN = 1.0;
 // path delays
    if (SandRandSEb)
      (negedge CKN *> (Q    +: D)) = (tplh$CKN$Q,    tphl$CKN$Q);
    if (SandRandSE)
      (negedge CKN *> (Q    +: SI)) = (tplh$CKN$Q,    tphl$CKN$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if (SandRandSEb)
      (negedge CKN *> (QN -: D)) = (tplh$CKN$QN, tphl$CKN$QN);
    if (SandRandSE)
      (negedge CKN *> (QN -: SI)) = (tplh$CKN$QN, tphl$CKN$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(negedge CKN &&& (SandRandSEb == 1), posedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSEb == 1), negedge D, tsetup$D$CKN  ,thold$D$CKN  , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), posedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (SandRandSE == 1), negedge SI, tsetup$SI$CKN ,thold$SI$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), posedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $setuphold(negedge CKN &&& (flag == 1), negedge SE, tsetup$SE$CKN ,thold$SE$CKN , NOTIFIER);
    $width(negedge CKN &&& (SandR == 1), tminpwl$CKN, 0, NOTIFIER);
    $width(posedge CKN &&& (SandR == 1), tminpwh$CKN, 0, NOTIFIER);
    $period(posedge CKN &&& (SandR == 1), tperiod$CKN, NOTIFIER);
    $setuphold(negedge CKN, posedge SN, tsetup$SN$CKN ,thold$SN$CKN , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(negedge CKN, posedge RN &&& (SN == 1'b1), tsetup$RN$CKN ,thold$RN$CKN , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFNSRHX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFQX1M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFQX2M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFQX4M (Q, D, SI, SE, CK);
output Q;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFQNX1M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFQNX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFQNX2M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFQNX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFQNX4M (QN, D, SI, SE, CK);
output QN;
input D, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFQNX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRX1M (Q, QN, D, SI, SE, CK, RN);
output Q, QN;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRX2M (Q, QN, D, SI, SE, CK, RN);
output Q, QN;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRX4M (Q, QN, D, SI, SE, CK, RN);
output Q, QN;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRHQX1M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRHQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRHQX2M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRHQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRHQX4M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRHQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRHQX8M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRHQX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRQX1M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRQX2M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFRQX4M (Q, D, SI, SE, CK, RN);
output Q;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN, tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN, tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFRQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSX1M (Q, QN, D, SI, SE, CK, SN);
output Q, QN;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSX2M (Q, QN, D, SI, SE, CK, SN);
output Q, QN;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSX4M (Q, QN, D, SI, SE, CK, SN);
output Q, QN;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSHQX1M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSHQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSHQX2M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSHQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSHQX4M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSHQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSHQX8M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSHQX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSQX1M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSQX2M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSQX4M (Q, D, SI, SE, CK, SN);
output Q;
input D, SI, SE, CK, SN;
reg NOTIFIER;
supply1 xRN;
supply1 dRN;

  buf   XX0 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );

// timing checks
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SDFFSQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRX1M (Q, QN, D, SI, SE, CK, SN, RN);
output Q, QN;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRX2M (Q, QN, D, SI, SE, CK, SN, RN);
output Q, QN;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRX4M (Q, QN, D, SI, SE, CK, SN, RN);
output Q, QN;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  not     I3 (QN, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$SN$QN = 1.0,
      tphl$SN$QN = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
    if ( SandRandSEb )
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if ( SandRandSE )
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRHQX1M (Q, D, SI, SE, CK, SN, RN);
output Q;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRHQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRHQX2M (Q, D, SI, SE, CK, SN, RN);
output Q;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRHQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRHQX4M (Q, D, SI, SE, CK, SN, RN);
output Q;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRHQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFSRHQX8M (Q, D, SI, SE, CK, SN, RN);
output Q;
input D, SI, SE, CK, SN, RN;
reg NOTIFIER;
  buf   XX0 (xRN, RN);
  buf   XX1 (xSN, SN);
  buf     IC (clk, CK);
  udp_dff I0 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I1 (n1, D, SI, SE);
  buf     I2 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  and     I7 (SandRandSEb, SandR, SEb);
  xor     I8 (DxorSD, D, SI);
  and     I9 (flag, DxorSD, SandR);
  specify
    specparam 
      tplh$SN$Q = 1.0,
      tphl$SN$Q = 1.0,
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tminpwl$SN = 1.0,
      tminpwh$SN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tsetup$SN$CK = 1.0,
      thold$SN$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      thold$RN$SN = 1.0,
      thold$SN$RN = 1.0,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb )
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );

// timing checks
    $setuphold(posedge CK, posedge RN &&& (SN == 1'b1), tsetup$RN$CK ,thold$RN$CK , NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);
    $setuphold(posedge CK, posedge SN, tsetup$SN$CK ,thold$SN$CK , NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge D, tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandR == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
    $hold(posedge RN, posedge SN, thold$SN$RN, NOTIFIER);    
    $hold(posedge SN, posedge RN, thold$RN$SN, NOTIFIER);    
endspecify
endmodule // SDFFSRHQX8M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFTRX1M (Q, QN, D, SI, SE, CK, RN);
output Q, QN;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
   udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
   buf        I1 (Q, n0);
   not        I2 (QN, n0);
   buf        I3 (scan, SE);
   and        I4 (DandRN, D, xRN);
   xor        I5 (flag, DandRN, SI);
   not        I6 (notscan, SE);
   and        I7 (checkD,xRN,notscan);
   and        I8 (scanD,SI,SE);
   and       I9 (DRN,D,xRN);
   and        I10 (normD,DRN,notscan);
   or        I11 (Deff,scanD,normD);
   buf        I12 (checkRN,notscan);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
	(posedge CK *> (Q    +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
	(posedge CK *> (QN   -: Deff)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
     $setuphold(posedge CK &&& (checkD == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkD == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkRN == 1), posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkRN == 1), negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK, thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK, thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);

     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);

endspecify
endmodule // SDFFTRX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFTRX2M (Q, QN, D, SI, SE, CK, RN);
output Q, QN;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
   udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
   buf        I1 (Q, n0);
   not        I2 (QN, n0);
   buf        I3 (scan, SE);
   and        I4 (DandRN, D, xRN);
   xor        I5 (flag, DandRN, SI);
   not        I6 (notscan, SE);
   and        I7 (checkD,xRN,notscan);
   and        I8 (scanD,SI,SE);
   and       I9 (DRN,D,xRN);
   and        I10 (normD,DRN,notscan);
   or        I11 (Deff,scanD,normD);
   buf        I12 (checkRN,notscan);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
	(posedge CK *> (Q    +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
	(posedge CK *> (QN   -: Deff)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
     $setuphold(posedge CK &&& (checkD == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkD == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkRN == 1), posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkRN == 1), negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK, thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK, thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);

     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);

endspecify
endmodule // SDFFTRX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SDFFTRX4M (Q, QN, D, SI, SE, CK, RN);
output Q, QN;
input D, SI, SE, CK, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX0 (xRN, RN);
   udp_sedfft I0 (n0, D, CK, xRN, SI, SE, 1'b1, NOTIFIER);
   buf        I1 (Q, n0);
   not        I2 (QN, n0);
   buf        I3 (scan, SE);
   and        I4 (DandRN, D, xRN);
   xor        I5 (flag, DandRN, SI);
   not        I6 (notscan, SE);
   and        I7 (checkD,xRN,notscan);
   and        I8 (scanD,SI,SE);
   and       I9 (DRN,D,xRN);
   and        I10 (normD,DRN,notscan);
   or        I11 (Deff,scanD,normD);
   buf        I12 (checkRN,notscan);
  specify
    specparam 
      tplh$RN$Q = 1.0,
      tphl$RN$Q = 1.0,
      tplh$RN$QN = 1.0,
      tphl$RN$QN = 1.0,
      tminpwl$RN = 1.0,
      tminpwh$RN = 1.0,
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tplh$CK$QN = 1.0,
      tphl$CK$QN = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
	(posedge CK *> (Q    +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
	(posedge CK *> (QN   -: Deff)) = (tplh$CK$QN, tphl$CK$QN);

// timing checks
     $setuphold(posedge CK &&& (checkD == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkD == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkRN == 1), posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (checkRN == 1), negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK, thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK, thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);

     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);

endspecify
endmodule // SDFFTRX4M
`endcelldefine
	

//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFX1M (Q, QN, D, CK, E, SE, SI);
output Q, QN;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER); 
  buf     I1 (Q, n0);  
  not     I2 (QN, n0);
  and     I3 (SandR, xSN, xRN);
  and     I4 (SandRandSE, SandR, SE);
  not     I5 (SEb, SE);
  and     I6 (SandRandSEbandE, SandR, SEb, E);
  xor     I7 (DxorSI, D, SI);
  and     I8 (flag, DxorSI, SandR);
  and     I9 (SandRandSEb, SandR, SEb);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
    if (SandRandSEbandE == 1)
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (SandRandSE == 1)
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if (SandRandSEbandE == 1)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if (SandRandSE == 1)
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
    $setuphold(posedge CK &&& (SandRandSEbandE == 1), posedge D  , tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEbandE == 1), negedge D  , tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI ,  tsetup$SI$CK ,thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI ,  tsetup$SI$CK ,thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge SE , tsetup$SE$CK , thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge SE , tsetup$SE$CK , thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge E , tsetup$E$CK , thold$E$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge E ,  tsetup$E$CK ,thold$E$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFX1M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFX2M (Q, QN, D, CK, E, SE, SI);
output Q, QN;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER); 
  buf     I1 (Q, n0);  
  not     I2 (QN, n0);
  and     I3 (SandR, xSN, xRN);
  and     I4 (SandRandSE, SandR, SE);
  not     I5 (SEb, SE);
  and     I6 (SandRandSEbandE, SandR, SEb, E);
  xor     I7 (DxorSI, D, SI);
  and     I8 (flag, DxorSI, SandR);
  and     I9 (SandRandSEb, SandR, SEb);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
    if (SandRandSEbandE == 1)
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (SandRandSE == 1)
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if (SandRandSEbandE == 1)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if (SandRandSE == 1)
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
    $setuphold(posedge CK &&& (SandRandSEbandE == 1), posedge D  , tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEbandE == 1), negedge D  , tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI ,  tsetup$SI$CK ,thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI ,  tsetup$SI$CK ,thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge SE , tsetup$SE$CK , thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge SE , tsetup$SE$CK , thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge E , tsetup$E$CK , thold$E$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge E ,  tsetup$E$CK ,thold$E$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFX2M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFX4M (Q, QN, D, CK, E, SE, SI);
output Q, QN;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER); 
  buf     I1 (Q, n0);  
  not     I2 (QN, n0);
  and     I3 (SandR, xSN, xRN);
  and     I4 (SandRandSE, SandR, SE);
  not     I5 (SEb, SE);
  and     I6 (SandRandSEbandE, SandR, SEb, E);
  xor     I7 (DxorSI, D, SI);
  and     I8 (flag, DxorSI, SandR);
  and     I9 (SandRandSEb, SandR, SEb);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
    if (SandRandSEbandE == 1)
      (posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
    if (SandRandSE == 1)
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
    if (SandRandSEbandE == 1)
      (posedge CK *> (QN -: D)) = (tplh$CK$QN, tphl$CK$QN);
    if (SandRandSE == 1)
      (posedge CK *> (QN -: SI)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
    $setuphold(posedge CK &&& (SandRandSEbandE == 1), posedge D  , tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEbandE == 1), negedge D  , tsetup$D$CK  ,thold$D$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI ,  tsetup$SI$CK ,thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI ,  tsetup$SI$CK ,thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), posedge SE , tsetup$SE$CK , thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag == 1), negedge SE , tsetup$SE$CK , thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), posedge E , tsetup$E$CK , thold$E$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb == 1), negedge E ,  tsetup$E$CK ,thold$E$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFX4M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFHQX1M (Q, D, CK, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);
   and       I3 (SandR, xSN, xRN);
   buf       I4 (scan, SE);
   not       I5 (notscan, SE);
   and       I6 (Dcheck, notscan, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (scan)
	(posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
     if (notscan)
	(posedge CK *> (Q    +: E)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
	(posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     (posedge CK *> (Q    +: SE)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFHQX1M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFHQX2M (Q, D, CK, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);
   and       I3 (SandR, xSN, xRN);
   buf       I4 (scan, SE);
   not       I5 (notscan, SE);
   and       I6 (Dcheck, notscan, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (scan)
	(posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
     if (notscan)
	(posedge CK *> (Q    +: E)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
	(posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     (posedge CK *> (Q    +: SE)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFHQX2M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFHQX4M (Q, D, CK, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);
   and       I3 (SandR, xSN, xRN);
   buf       I4 (scan, SE);
   not       I5 (notscan, SE);
   and       I6 (Dcheck, notscan, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (scan)
	(posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
     if (notscan)
	(posedge CK *> (Q    +: E)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
	(posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     (posedge CK *> (Q    +: SE)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFHQX4M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFHQX8M (Q, D, CK, E, SE, SI);
output Q;
input D, CK, E, SE, SI;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;

   udp_sedff I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf       I1 (Q, n0);
   and       I3 (SandR, xSN, xRN);
   buf       I4 (scan, SE);
   not       I5 (notscan, SE);
   and       I6 (Dcheck, notscan, E);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     if (scan)
	(posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);
     if (notscan)
	(posedge CK *> (Q    +: E)) = (tplh$CK$Q,    tphl$CK$Q);
     if (Dcheck)
	(posedge CK *> (Q    +: D)) = (tplh$CK$Q,    tphl$CK$Q);
     (posedge CK *> (Q    +: SE)) = (tplh$CK$Q,    tphl$CK$Q);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (notscan == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFHQX8M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFTRX1M (Q, QN, D, CK, E, SE, SI, RN);
output Q, QN;
input D, CK, E, SE, SI, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX1 (xRN, RN);

   udp_sedfft I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf        I1 (Q, n0);
   not        I2 (QN, n0);
   buf        I3 (scan, SE);
   and        I4 (DandRN, D, xRN);
   xor        I5 (flag, DandRN, SI);
   not        I6 (notscan, SE);
   and        I7 (Dcheck,E,xRN,notscan);
   and        I8 (scanD,SI,SE);
   and        I9 (DRN,D,xRN);
   and        I10 (normD,DRN,notscan);
   or         I11 (Deff,scanD,normD);
   buf        I15 (RNcheck, notscan);
   and        I14 (Echeck,xRN,notscan);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     (posedge CK *> (Q    +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
     (posedge CK *> (QN   -: Deff)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Echeck == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Echeck == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (RNcheck == 1), posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (RNcheck == 1), negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFTRX1M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFTRX2M (Q, QN, D, CK, E, SE, SI, RN);
output Q, QN;
input D, CK, E, SE, SI, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX1 (xRN, RN);

   udp_sedfft I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf        I1 (Q, n0);
   not        I2 (QN, n0);
   buf        I3 (scan, SE);
   and        I4 (DandRN, D, xRN);
   xor        I5 (flag, DandRN, SI);
   not        I6 (notscan, SE);
   and        I7 (Dcheck,E,xRN,notscan);
   and        I8 (scanD,SI,SE);
   and        I9 (DRN,D,xRN);
   and        I10 (normD,DRN,notscan);
   or         I11 (Deff,scanD,normD);
   buf        I15 (RNcheck, notscan);
   and        I14 (Echeck,xRN,notscan);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     (posedge CK *> (Q    +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
     (posedge CK *> (QN   -: Deff)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Echeck == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Echeck == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (RNcheck == 1), posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (RNcheck == 1), negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFTRX2M
`endcelldefine


//$Id: edff.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SEDFFTRX4M (Q, QN, D, CK, E, SE, SI, RN);
output Q, QN;
input D, CK, E, SE, SI, RN;
reg NOTIFIER;
supply1 xSN;
supply1 dSN;

  buf   XX1 (xRN, RN);

   udp_sedfft I0 (n0, D, CK, xRN, SI, SE, E, NOTIFIER);
   buf        I1 (Q, n0);
   not        I2 (QN, n0);
   buf        I3 (scan, SE);
   and        I4 (DandRN, D, xRN);
   xor        I5 (flag, DandRN, SI);
   not        I6 (notscan, SE);
   and        I7 (Dcheck,E,xRN,notscan);
   and        I8 (scanD,SI,SE);
   and        I9 (DRN,D,xRN);
   and        I10 (normD,DRN,notscan);
   or         I11 (Deff,scanD,normD);
   buf        I15 (RNcheck, notscan);
   and        I14 (Echeck,xRN,notscan);
  specify
    specparam 
      tplh$CK$Q    = 1.0,
      tphl$CK$Q    = 1.0,
      tplh$CK$QN    = 1.0,
      tphl$CK$QN    = 1.0,
      tsetup$D$CK = 1.0,
      thold$D$CK  = 0.5,
      tsetup$CK$CK = 1.0,
      thold$CK$CK  = 0.5,
      tsetup$E$CK = 1.0,
      thold$E$CK  = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK  = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK  = 0.5,
      tsetup$RN$CK = 1.0,
      thold$RN$CK  = 0.5,
      tminpwl$CK  = 1.0,
      tminpwh$CK  = 1.0,
      tperiod$CK  = 1.0;
    // path delays
     (posedge CK *> (Q    +: Deff)) = (tplh$CK$Q,  tphl$CK$Q);
     (posedge CK *> (QN   -: Deff)) = (tplh$CK$QN, tphl$CK$QN);
     // timing checks
     $setuphold(posedge CK &&& (Dcheck == 1), posedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Dcheck == 1), negedge D, tsetup$D$CK, thold$D$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), posedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (scan == 1), negedge SI, tsetup$SI$CK ,thold$SI$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Echeck == 1), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (Echeck == 1), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
     $setuphold(posedge CK &&& (RNcheck == 1), posedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK &&& (RNcheck == 1), negedge RN, tsetup$RN$CK, thold$RN$CK, NOTIFIER);
     $setuphold(posedge CK, posedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $setuphold(posedge CK, negedge SE,  tsetup$SE$CK ,thold$SE$CK , NOTIFIER);
     $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
     $width(posedge CK, tminpwh$CK, 0, NOTIFIER);
     $period(posedge CK, tperiod$CK, NOTIFIER);
  endspecify
endmodule // SEDFFTRX4M
`endcelldefine


//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SMDFFHQX1M (Q, D0, D1, S0, SI, SE, CK);
output Q;
input D0, D1, S0, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_mux I0 (nm, D0, D1, S0);
  udp_dff I1 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I2 (n1, nm, SI, SE);
  buf     I3 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  not     I7 (nsel, S0);
  and     I8 (SandRandSEb0, SandR, SEb, nsel);
  and     I9 (SandRandSEb1, SandR, SEb, S0);
  xor     I10 (flag0, nm, SI);
  xor     I12 (D0xorD1, D0, D1);
  and     I13 (flag1, D0xorD1, SandR,SEb);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D0$CK = 1.0,
      thold$D0$CK = 0.5,
      tsetup$D1$CK = 1.0,
      thold$D1$CK = 0.5,
      tsetup$S0$CK = 1.0,
      thold$S0$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb0 )
      (posedge CK *> (Q    +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb1 )
      (posedge CK *> (Q    +: D1)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), posedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), negedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), posedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), negedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SMDFFHQX1M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SMDFFHQX2M (Q, D0, D1, S0, SI, SE, CK);
output Q;
input D0, D1, S0, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_mux I0 (nm, D0, D1, S0);
  udp_dff I1 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I2 (n1, nm, SI, SE);
  buf     I3 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  not     I7 (nsel, S0);
  and     I8 (SandRandSEb0, SandR, SEb, nsel);
  and     I9 (SandRandSEb1, SandR, SEb, S0);
  xor     I10 (flag0, nm, SI);
  xor     I12 (D0xorD1, D0, D1);
  and     I13 (flag1, D0xorD1, SandR,SEb);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D0$CK = 1.0,
      thold$D0$CK = 0.5,
      tsetup$D1$CK = 1.0,
      thold$D1$CK = 0.5,
      tsetup$S0$CK = 1.0,
      thold$S0$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb0 )
      (posedge CK *> (Q    +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb1 )
      (posedge CK *> (Q    +: D1)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), posedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), negedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), posedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), negedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SMDFFHQX2M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SMDFFHQX4M (Q, D0, D1, S0, SI, SE, CK);
output Q;
input D0, D1, S0, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_mux I0 (nm, D0, D1, S0);
  udp_dff I1 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I2 (n1, nm, SI, SE);
  buf     I3 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  not     I7 (nsel, S0);
  and     I8 (SandRandSEb0, SandR, SEb, nsel);
  and     I9 (SandRandSEb1, SandR, SEb, S0);
  xor     I10 (flag0, nm, SI);
  xor     I12 (D0xorD1, D0, D1);
  and     I13 (flag1, D0xorD1, SandR,SEb);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D0$CK = 1.0,
      thold$D0$CK = 0.5,
      tsetup$D1$CK = 1.0,
      thold$D1$CK = 0.5,
      tsetup$S0$CK = 1.0,
      thold$S0$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb0 )
      (posedge CK *> (Q    +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb1 )
      (posedge CK *> (Q    +: D1)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), posedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), negedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), posedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), negedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SMDFFHQX4M
`endcelldefine
	

//$Id: sdff.genpp,v 1.5 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module SMDFFHQX8M (Q, D0, D1, S0, SI, SE, CK);
output Q;
input D0, D1, S0, SI, SE, CK;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dRN, dSN;
  buf     IC (clk, CK);
  udp_mux I0 (nm, D0, D1, S0);
  udp_dff I1 (n0, n1, clk, xRN, xSN, NOTIFIER);
  udp_mux I2 (n1, nm, SI, SE);
  buf     I3 (Q, n0);
  and     I4 (SandR, xSN, xRN);
  and     I5 (SandRandSE, SandR, SE);
  not     I6 (SEb, SE);
  not     I7 (nsel, S0);
  and     I8 (SandRandSEb0, SandR, SEb, nsel);
  and     I9 (SandRandSEb1, SandR, SEb, S0);
  xor     I10 (flag0, nm, SI);
  xor     I12 (D0xorD1, D0, D1);
  and     I13 (flag1, D0xorD1, SandR,SEb);
  specify
    specparam 
      tplh$CK$Q = 1.0,
      tphl$CK$Q = 1.0,
      tsetup$D0$CK = 1.0,
      thold$D0$CK = 0.5,
      tsetup$D1$CK = 1.0,
      thold$D1$CK = 0.5,
      tsetup$S0$CK = 1.0,
      thold$S0$CK = 0.5,
      tsetup$SI$CK = 1.0,
      thold$SI$CK = 0.5,
      tsetup$SE$CK = 1.0,
      thold$SE$CK = 0.5,
      tminpwl$CK = 1.0,
      tminpwh$CK = 1.0,
      tperiod$CK = 1.0;
 // path delays
    if ( SandRandSEb0 )
      (posedge CK *> (Q    +: D0)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSEb1 )
      (posedge CK *> (Q    +: D1)) = (tplh$CK$Q,    tphl$CK$Q);
    if ( SandRandSE )
      (posedge CK *> (Q    +: SI)) = (tplh$CK$Q,    tphl$CK$Q);

// timing checks
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), posedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb0 == 1), negedge D0, tsetup$D0$CK  ,thold$D0$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), posedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSEb1 == 1), negedge D1, tsetup$D1$CK  ,thold$D1$CK  , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), posedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (SandRandSE == 1), negedge SI, tsetup$SI$CK, thold$SI$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), posedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag0 == 1), negedge SE, tsetup$SE$CK, thold$SE$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), posedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $setuphold(posedge CK &&& (flag1 == 1), negedge S0, tsetup$S0$CK, thold$S0$CK , NOTIFIER);
    $width(negedge CK &&& (SandR == 1), tminpwl$CK, 0, NOTIFIER);
    $width(posedge CK &&& (SandR == 1), tminpwh$CK, 0, NOTIFIER);
    $period(posedge CK &&& (SandR == 1), tperiod$CK, NOTIFIER);
endspecify
endmodule // SMDFFHQX8M
`endcelldefine
	

//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX12M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX12M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX16M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX16M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX1M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX1M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX20M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX20M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX24M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX24M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX2M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX2M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX3M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX3M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX4M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX4M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX6M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX6M
`endcelldefine
//$Id: buf.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TBUFX8M (Y, A, OE);
output Y;
input A, OE;

  bufif1 I0(Y, A, OE);
  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$OE$Y = 1.0,
      tphl$OE$Y = 1.0;

    // path delays
    (A *> Y) = (tplh$A$Y, tphl$A$Y);
    (OE *> Y) = (tplh$OE$Y, tphl$OE$Y);
  endspecify

endmodule // TBUFX8M
`endcelldefine
//$Id: tie.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TIEHIM (Y);
output Y;

  buf I0(Y, 1'b1);

endmodule //TIEHIM 
`endcelldefine
//$Id: tie.genpp,v 1.1.1.1 2002/12/05 17:56:00 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TIELOM (Y);
output Y;

  buf I0(Y, 1'b0);

endmodule //TIELOM 
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATX1M (Q, QN, D, G);
output  Q, QN;
input  D, G;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dSN, dRN;

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
not I3(clk,G);
buf I4(flgclk,G);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$G$Q    = 1.0,
      tphl$G$Q    = 1.0,
      tplh$G$QN   = 1.0,
      tphl$G$QN   = 1.0,
      tsetup$D$G = 1.0,
      thold$D$G  = 0.5,
  tminpwh$G  = 1.0,
  tperiod$G  = 1.0;
    // path delays
    if (SandR)
      (posedge G *> (Q    +: D)) = (tplh$G$Q,    tphl$G$Q);
    if (SandR)
      (posedge G *> (QN -: D)) = (tplh$G$QN, tphl$G$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );

    // timing checks
    $setuphold(negedge G &&& (SandR == 1), posedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $setuphold(negedge G &&& (SandR == 1), negedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $width(posedge G &&& (SandR == 1), tminpwh$G, 0, NOTIFIER);
    $period(posedge G &&& (SandR == 1), tperiod$G, NOTIFIER);


   endspecify
endmodule //TLATX1M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATX2M (Q, QN, D, G);
output  Q, QN;
input  D, G;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dSN, dRN;

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
not I3(clk,G);
buf I4(flgclk,G);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$G$Q    = 1.0,
      tphl$G$Q    = 1.0,
      tplh$G$QN   = 1.0,
      tphl$G$QN   = 1.0,
      tsetup$D$G = 1.0,
      thold$D$G  = 0.5,
  tminpwh$G  = 1.0,
  tperiod$G  = 1.0;
    // path delays
    if (SandR)
      (posedge G *> (Q    +: D)) = (tplh$G$Q,    tphl$G$Q);
    if (SandR)
      (posedge G *> (QN -: D)) = (tplh$G$QN, tphl$G$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );

    // timing checks
    $setuphold(negedge G &&& (SandR == 1), posedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $setuphold(negedge G &&& (SandR == 1), negedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $width(posedge G &&& (SandR == 1), tminpwh$G, 0, NOTIFIER);
    $period(posedge G &&& (SandR == 1), tperiod$G, NOTIFIER);


   endspecify
endmodule //TLATX2M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATX4M (Q, QN, D, G);
output  Q, QN;
input  D, G;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dSN, dRN;

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
not I3(clk,G);
buf I4(flgclk,G);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$G$Q    = 1.0,
      tphl$G$Q    = 1.0,
      tplh$G$QN   = 1.0,
      tphl$G$QN   = 1.0,
      tsetup$D$G = 1.0,
      thold$D$G  = 0.5,
  tminpwh$G  = 1.0,
  tperiod$G  = 1.0;
    // path delays
    if (SandR)
      (posedge G *> (Q    +: D)) = (tplh$G$Q,    tphl$G$Q);
    if (SandR)
      (posedge G *> (QN -: D)) = (tplh$G$QN, tphl$G$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );

    // timing checks
    $setuphold(negedge G &&& (SandR == 1), posedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $setuphold(negedge G &&& (SandR == 1), negedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $width(posedge G &&& (SandR == 1), tminpwh$G, 0, NOTIFIER);
    $period(posedge G &&& (SandR == 1), tperiod$G, NOTIFIER);


   endspecify
endmodule //TLATX4M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNX1M (Q, QN, D, GN);
output  Q, QN;
input  D, GN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dSN, dRN;

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
buf      I3 (clk, GN);
not      I4 (flgclk, GN);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$GN$Q    = 1.0,
      tphl$GN$Q    = 1.0,
      tplh$GN$QN = 1.0,
      tphl$GN$QN = 1.0,
      tsetup$D$GN = 1.0,
      thold$D$GN  = 0.5,
   tminpwl$GN  = 1.0,
   tperiod$GN  = 1.0;
    // path delays
    if (SandR)
      (negedge GN *> (Q    +: D)) = (tplh$GN$Q,    tphl$GN$Q);
    if (SandR)
      (negedge GN *> (QN -: D)) = (tplh$GN$QN, tphl$GN$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );

    // timing checks
    $setuphold(posedge GN &&& (SandR == 1), posedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $setuphold(posedge GN &&& (SandR == 1), negedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $width(negedge GN &&& (SandR == 1), tminpwl$GN, 0, NOTIFIER);
    $period(negedge GN &&& (SandR == 1), tperiod$GN, NOTIFIER);


   endspecify
endmodule //TLATNX1M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNX2M (Q, QN, D, GN);
output  Q, QN;
input  D, GN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dSN, dRN;

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
buf      I3 (clk, GN);
not      I4 (flgclk, GN);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$GN$Q    = 1.0,
      tphl$GN$Q    = 1.0,
      tplh$GN$QN = 1.0,
      tphl$GN$QN = 1.0,
      tsetup$D$GN = 1.0,
      thold$D$GN  = 0.5,
   tminpwl$GN  = 1.0,
   tperiod$GN  = 1.0;
    // path delays
    if (SandR)
      (negedge GN *> (Q    +: D)) = (tplh$GN$Q,    tphl$GN$Q);
    if (SandR)
      (negedge GN *> (QN -: D)) = (tplh$GN$QN, tphl$GN$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );

    // timing checks
    $setuphold(posedge GN &&& (SandR == 1), posedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $setuphold(posedge GN &&& (SandR == 1), negedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $width(negedge GN &&& (SandR == 1), tminpwl$GN, 0, NOTIFIER);
    $period(negedge GN &&& (SandR == 1), tperiod$GN, NOTIFIER);


   endspecify
endmodule //TLATNX2M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNX4M (Q, QN, D, GN);
output  Q, QN;
input  D, GN;
reg NOTIFIER;
supply1 xRN, xSN;
supply1 dSN, dRN;

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
buf      I3 (clk, GN);
not      I4 (flgclk, GN);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$GN$Q    = 1.0,
      tphl$GN$Q    = 1.0,
      tplh$GN$QN = 1.0,
      tphl$GN$QN = 1.0,
      tsetup$D$GN = 1.0,
      thold$D$GN  = 0.5,
   tminpwl$GN  = 1.0,
   tperiod$GN  = 1.0;
    // path delays
    if (SandR)
      (negedge GN *> (Q    +: D)) = (tplh$GN$Q,    tphl$GN$Q);
    if (SandR)
      (negedge GN *> (QN -: D)) = (tplh$GN$QN, tphl$GN$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );

    // timing checks
    $setuphold(posedge GN &&& (SandR == 1), posedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $setuphold(posedge GN &&& (SandR == 1), negedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $width(negedge GN &&& (SandR == 1), tminpwl$GN, 0, NOTIFIER);
    $period(negedge GN &&& (SandR == 1), tperiod$GN, NOTIFIER);


   endspecify
endmodule //TLATNX4M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX12M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX12M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX16M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX16M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX20M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX20M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX2M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX2M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX3M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX3M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX4M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX4M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX6M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX6M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNCAX8M (ECK, E, CK);
output ECK;
input  E, CK;
reg NOTIFIER;

supply1 R, S;

  udp_tlat I0 (n0, E, CK, R, S, NOTIFIER);
  and      I1 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK, posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK, negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
  endspecify

endmodule //TLATNCAX8M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNSRX1M (Q, QN, D, GN, RN, SN);
output  Q, QN;
input  D, GN, RN, SN;
reg NOTIFIER;

buf       XX0 (xSN, SN);
buf       XX1 (xRN, RN);

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
buf      I3 (clk, GN);
not      I4 (flgclk, GN);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$GN$Q    = 1.0,
      tphl$GN$Q    = 1.0,
      tplh$GN$QN = 1.0,
      tphl$GN$QN = 1.0,
      tsetup$D$GN = 1.0,
      thold$D$GN  = 0.5,
      tplh$RN$Q      = 1.0,
      tphl$RN$Q      = 1.0,
      tplh$RN$QN   = 1.0,
      tphl$RN$QN   = 1.0,
      tsetup$RN$GN = 1.0,
      thold$RN$GN  = 0.5,
      tplh$SN$Q      = 1.0,
      tphl$SN$Q      = 1.0,
      tplh$SN$QN   = 1.0,
      tphl$SN$QN   = 1.0,
      tsetup$SN$GN = 1.0,
      thold$SN$GN  = 0.5,
      thold$SN$RN = 1.0,
      thold$RN$SN = 1.0,
   tminpwl$SN    = 1.0,
   tminpwl$RN    = 1.0,
   tminpwl$GN  = 1.0,
   tperiod$GN  = 1.0;
    // path delays
    if (SandR)
      (negedge GN *> (Q    +: D)) = (tplh$GN$Q,    tphl$GN$Q);
    if (SandR)
      (negedge GN *> (QN -: D)) = (tplh$GN$QN, tphl$GN$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
    $setuphold(posedge GN, posedge SN, tsetup$SN$GN,thold$SN$GN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
      ( negedge RN *> (QN -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );
    $setuphold(posedge GN, posedge RN &&& (SN == 1'b1), tsetup$RN$GN,thold$RN$GN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);

    // timing checks
    $setuphold(posedge GN &&& (SandR == 1), posedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $setuphold(posedge GN &&& (SandR == 1), negedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $width(negedge GN &&& (SandR == 1), tminpwl$GN, 0, NOTIFIER);
    $period(negedge GN &&& (SandR == 1), tperiod$GN, NOTIFIER);

    $hold(posedge RN, posedge SN, thold$SN$RN,NOTIFIER);
    $hold(posedge SN, posedge RN, thold$RN$SN,NOTIFIER);

   endspecify
endmodule //TLATNSRX1M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNSRX2M (Q, QN, D, GN, RN, SN);
output  Q, QN;
input  D, GN, RN, SN;
reg NOTIFIER;

buf       XX0 (xSN, SN);
buf       XX1 (xRN, RN);

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
buf      I3 (clk, GN);
not      I4 (flgclk, GN);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$GN$Q    = 1.0,
      tphl$GN$Q    = 1.0,
      tplh$GN$QN = 1.0,
      tphl$GN$QN = 1.0,
      tsetup$D$GN = 1.0,
      thold$D$GN  = 0.5,
      tplh$RN$Q      = 1.0,
      tphl$RN$Q      = 1.0,
      tplh$RN$QN   = 1.0,
      tphl$RN$QN   = 1.0,
      tsetup$RN$GN = 1.0,
      thold$RN$GN  = 0.5,
      tplh$SN$Q      = 1.0,
      tphl$SN$Q      = 1.0,
      tplh$SN$QN   = 1.0,
      tphl$SN$QN   = 1.0,
      tsetup$SN$GN = 1.0,
      thold$SN$GN  = 0.5,
      thold$SN$RN = 1.0,
      thold$RN$SN = 1.0,
   tminpwl$SN    = 1.0,
   tminpwl$RN    = 1.0,
   tminpwl$GN  = 1.0,
   tperiod$GN  = 1.0;
    // path delays
    if (SandR)
      (negedge GN *> (Q    +: D)) = (tplh$GN$Q,    tphl$GN$Q);
    if (SandR)
      (negedge GN *> (QN -: D)) = (tplh$GN$QN, tphl$GN$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
    $setuphold(posedge GN, posedge SN, tsetup$SN$GN,thold$SN$GN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
      ( negedge RN *> (QN -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );
    $setuphold(posedge GN, posedge RN &&& (SN == 1'b1), tsetup$RN$GN,thold$RN$GN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);

    // timing checks
    $setuphold(posedge GN &&& (SandR == 1), posedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $setuphold(posedge GN &&& (SandR == 1), negedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $width(negedge GN &&& (SandR == 1), tminpwl$GN, 0, NOTIFIER);
    $period(negedge GN &&& (SandR == 1), tperiod$GN, NOTIFIER);

    $hold(posedge RN, posedge SN, thold$SN$RN,NOTIFIER);
    $hold(posedge SN, posedge RN, thold$RN$SN,NOTIFIER);

   endspecify
endmodule //TLATNSRX2M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNSRX4M (Q, QN, D, GN, RN, SN);
output  Q, QN;
input  D, GN, RN, SN;
reg NOTIFIER;

buf       XX0 (xSN, SN);
buf       XX1 (xRN, RN);

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
buf      I3 (clk, GN);
not      I4 (flgclk, GN);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$GN$Q    = 1.0,
      tphl$GN$Q    = 1.0,
      tplh$GN$QN = 1.0,
      tphl$GN$QN = 1.0,
      tsetup$D$GN = 1.0,
      thold$D$GN  = 0.5,
      tplh$RN$Q      = 1.0,
      tphl$RN$Q      = 1.0,
      tplh$RN$QN   = 1.0,
      tphl$RN$QN   = 1.0,
      tsetup$RN$GN = 1.0,
      thold$RN$GN  = 0.5,
      tplh$SN$Q      = 1.0,
      tphl$SN$Q      = 1.0,
      tplh$SN$QN   = 1.0,
      tphl$SN$QN   = 1.0,
      tsetup$SN$GN = 1.0,
      thold$SN$GN  = 0.5,
      thold$SN$RN = 1.0,
      thold$RN$SN = 1.0,
   tminpwl$SN    = 1.0,
   tminpwl$RN    = 1.0,
   tminpwl$GN  = 1.0,
   tperiod$GN  = 1.0;
    // path delays
    if (SandR)
      (negedge GN *> (Q    +: D)) = (tplh$GN$Q,    tphl$GN$Q);
    if (SandR)
      (negedge GN *> (QN -: D)) = (tplh$GN$QN, tphl$GN$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
    $setuphold(posedge GN, posedge SN, tsetup$SN$GN,thold$SN$GN, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
      ( negedge RN *> (QN -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );
    $setuphold(posedge GN, posedge RN &&& (SN == 1'b1), tsetup$RN$GN,thold$RN$GN, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);

    // timing checks
    $setuphold(posedge GN &&& (SandR == 1), posedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $setuphold(posedge GN &&& (SandR == 1), negedge D, tsetup$D$GN,thold$D$GN, NOTIFIER);
    $width(negedge GN &&& (SandR == 1), tminpwl$GN, 0, NOTIFIER);
    $period(negedge GN &&& (SandR == 1), tperiod$GN, NOTIFIER);

    $hold(posedge RN, posedge SN, thold$SN$RN,NOTIFIER);
    $hold(posedge SN, posedge RN, thold$RN$SN,NOTIFIER);

   endspecify
endmodule //TLATNSRX4M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX12M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX12M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX16M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX16M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX20M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX20M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX2M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX2M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX3M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX3M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX4M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX4M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX6M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX6M
`endcelldefine
//$Id: ckgate.genpp,v 1.4 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATNTSCAX8M (ECK, E, SE, CK);
output ECK;
input  E, SE, CK;
reg NOTIFIER;

supply1 R, S;

  or       I0 (n1, SE, E);
  udp_tlat I1 (n0, n1, CK, R, S, NOTIFIER);
  and      I2 (ECK, n0, CK);

  specify
    specparam 
      tplh$E$ECK    = 1.0,
      tphl$E$ECK    = 1.0,
      tplh$SE$ECK   = 1.0,
      tphl$SE$ECK   = 1.0,
      tplh$CK$ECK   = 1.0,
      tphl$CK$ECK   = 1.0,
      tsetup$E$CK   = 1.0,
      thold$E$CK    = 0.5,
      tsetup$SE$CK  = 1.0,
      thold$SE$CK   = 0.5,
      tminpwl$CK    = 1.0,
      tperiod$CK    = 1.0;

    // path delays
      (posedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);
      (negedge CK *> (ECK  +: E)) = (tplh$CK$ECK,    tphl$CK$ECK);

    // timing checks
    $setuphold(posedge CK &&& (SE == 0), posedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $setuphold(posedge CK &&& (SE == 0), negedge E, tsetup$E$CK, thold$E$CK, NOTIFIER);
    $width(negedge CK, tminpwl$CK, 0, NOTIFIER);
    $period(negedge CK, tperiod$CK, NOTIFIER);
    $setuphold(posedge CK, posedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
    $setuphold(posedge CK, negedge SE, tsetup$SE$CK, thold$SE$CK, NOTIFIER);
  endspecify

endmodule //TLATNTSCAX8M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATSRX1M (Q, QN, D, G, SN, RN);
output  Q, QN;
input  D, G, SN, RN;
reg NOTIFIER;

buf       XX0 (xSN, SN);
buf       XX1 (xRN, RN);

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
not I3(clk,G);
buf I4(flgclk,G);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$G$Q    = 1.0,
      tphl$G$Q    = 1.0,
      tplh$G$QN   = 1.0,
      tphl$G$QN   = 1.0,
      tsetup$D$G = 1.0,
      thold$D$G  = 0.5,
      tplh$RN$Q      = 1.0,
      tphl$RN$Q      = 1.0,
      tplh$RN$QN   = 1.0,
      tphl$RN$QN   = 1.0,
      tsetup$RN$G = 1.0,
      thold$RN$G  = 0.5,
      tplh$SN$Q      = 1.0,
      tphl$SN$Q      = 1.0,
      tplh$SN$QN   = 1.0,
      tphl$SN$QN   = 1.0,
      tsetup$SN$G = 1.0,
      thold$SN$G  = 0.5,
      thold$SN$RN = 1.0,
      thold$RN$SN = 1.0,
  tminpwl$SN    = 1.0,
  tminpwl$RN    = 1.0,
  tminpwh$G  = 1.0,
  tperiod$G  = 1.0;
    // path delays
    if (SandR)
      (posedge G *> (Q    +: D)) = (tplh$G$Q,    tphl$G$Q);
    if (SandR)
      (posedge G *> (QN -: D)) = (tplh$G$QN, tphl$G$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
    $setuphold(negedge G, posedge SN, tsetup$SN$G,thold$SN$G, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );
    $setuphold(negedge G, posedge RN &&& (SN == 1'b1), tsetup$RN$G,thold$RN$G, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);

    // timing checks
    $setuphold(negedge G &&& (SandR == 1), posedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $setuphold(negedge G &&& (SandR == 1), negedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $width(posedge G &&& (SandR == 1), tminpwh$G, 0, NOTIFIER);
    $period(posedge G &&& (SandR == 1), tperiod$G, NOTIFIER);

    $hold(posedge RN, posedge SN, thold$SN$RN,NOTIFIER);
    $hold(posedge SN, posedge RN, thold$RN$SN,NOTIFIER);

   endspecify
endmodule //TLATSRX1M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATSRX2M (Q, QN, D, G, SN, RN);
output  Q, QN;
input  D, G, SN, RN;
reg NOTIFIER;

buf       XX0 (xSN, SN);
buf       XX1 (xRN, RN);

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
not I3(clk,G);
buf I4(flgclk,G);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$G$Q    = 1.0,
      tphl$G$Q    = 1.0,
      tplh$G$QN   = 1.0,
      tphl$G$QN   = 1.0,
      tsetup$D$G = 1.0,
      thold$D$G  = 0.5,
      tplh$RN$Q      = 1.0,
      tphl$RN$Q      = 1.0,
      tplh$RN$QN   = 1.0,
      tphl$RN$QN   = 1.0,
      tsetup$RN$G = 1.0,
      thold$RN$G  = 0.5,
      tplh$SN$Q      = 1.0,
      tphl$SN$Q      = 1.0,
      tplh$SN$QN   = 1.0,
      tphl$SN$QN   = 1.0,
      tsetup$SN$G = 1.0,
      thold$SN$G  = 0.5,
      thold$SN$RN = 1.0,
      thold$RN$SN = 1.0,
  tminpwl$SN    = 1.0,
  tminpwl$RN    = 1.0,
  tminpwh$G  = 1.0,
  tperiod$G  = 1.0;
    // path delays
    if (SandR)
      (posedge G *> (Q    +: D)) = (tplh$G$Q,    tphl$G$Q);
    if (SandR)
      (posedge G *> (QN -: D)) = (tplh$G$QN, tphl$G$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
    $setuphold(negedge G, posedge SN, tsetup$SN$G,thold$SN$G, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );
    $setuphold(negedge G, posedge RN &&& (SN == 1'b1), tsetup$RN$G,thold$RN$G, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);

    // timing checks
    $setuphold(negedge G &&& (SandR == 1), posedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $setuphold(negedge G &&& (SandR == 1), negedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $width(posedge G &&& (SandR == 1), tminpwh$G, 0, NOTIFIER);
    $period(posedge G &&& (SandR == 1), tperiod$G, NOTIFIER);

    $hold(posedge RN, posedge SN, thold$SN$RN,NOTIFIER);
    $hold(posedge SN, posedge RN, thold$RN$SN,NOTIFIER);

   endspecify
endmodule //TLATSRX2M
`endcelldefine
//$Id: tlat.genpp,v 1.3 2004/12/15 08:24:30 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module TLATSRX4M (Q, QN, D, G, SN, RN);
output  Q, QN;
input  D, G, SN, RN;
reg NOTIFIER;

buf       XX0 (xSN, SN);
buf       XX1 (xRN, RN);

udp_tlat I0 (n0, D, clk, xRN, xSN, NOTIFIER);
buf      I1 (Q, n0);
not      I2 (QN, n0);
not I3(clk,G);
buf I4(flgclk,G);
and      I5 (SandR, xSN, xRN);
and      I6 (SandRandCLK, xSN,xRN,flgclk);

 specify
   specparam 
   //timing parameters
      tplh$D$Q    = 1.0,
      tphl$D$Q    = 1.0,
      tplh$D$QN   = 1.0,
      tphl$D$QN   = 1.0,

      tplh$G$Q    = 1.0,
      tphl$G$Q    = 1.0,
      tplh$G$QN   = 1.0,
      tphl$G$QN   = 1.0,
      tsetup$D$G = 1.0,
      thold$D$G  = 0.5,
      tplh$RN$Q      = 1.0,
      tphl$RN$Q      = 1.0,
      tplh$RN$QN   = 1.0,
      tphl$RN$QN   = 1.0,
      tsetup$RN$G = 1.0,
      thold$RN$G  = 0.5,
      tplh$SN$Q      = 1.0,
      tphl$SN$Q      = 1.0,
      tplh$SN$QN   = 1.0,
      tphl$SN$QN   = 1.0,
      tsetup$SN$G = 1.0,
      thold$SN$G  = 0.5,
      thold$SN$RN = 1.0,
      thold$RN$SN = 1.0,
  tminpwl$SN    = 1.0,
  tminpwl$RN    = 1.0,
  tminpwh$G  = 1.0,
  tperiod$G  = 1.0;
    // path delays
    if (SandR)
      (posedge G *> (Q    +: D)) = (tplh$G$Q,    tphl$G$Q);
    if (SandR)
      (posedge G *> (QN -: D)) = (tplh$G$QN, tphl$G$QN);
    if (SandRandCLK)
      ( D *> Q ) = (tplh$D$Q, tphl$D$Q );
    if (SandRandCLK)
      ( D *> QN ) = (tplh$D$QN, tphl$D$QN );
      ( negedge SN *> (Q  +:1'b1) ) = (tplh$SN$Q, tphl$SN$Q );
      ( negedge SN *> (QN  -:1'b1) ) = (tplh$SN$QN, tphl$SN$QN );
    $setuphold(negedge G, posedge SN, tsetup$SN$G,thold$SN$G, NOTIFIER);
    $width(negedge SN, tminpwl$SN, 0, NOTIFIER);
      ( negedge RN *> (Q  +:1'b0) ) = (tplh$RN$Q, tphl$RN$Q );
      ( negedge RN *> (QN  -:1'b0) ) = (tplh$RN$QN, tphl$RN$QN );
    $setuphold(negedge G, posedge RN &&& (SN == 1'b1), tsetup$RN$G,thold$RN$G, NOTIFIER);
    $width(negedge RN &&& (SN == 1'b1), tminpwl$RN, 0, NOTIFIER);

    // timing checks
    $setuphold(negedge G &&& (SandR == 1), posedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $setuphold(negedge G &&& (SandR == 1), negedge D, tsetup$D$G,thold$D$G, NOTIFIER);
    $width(posedge G &&& (SandR == 1), tminpwh$G, 0, NOTIFIER);
    $period(posedge G &&& (SandR == 1), tperiod$G, NOTIFIER);

    $hold(posedge RN, posedge SN, thold$SN$RN,NOTIFIER);
    $hold(posedge SN, posedge RN, thold$RN$SN,NOTIFIER);

   endspecify
endmodule //TLATSRX4M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR2X1M (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XNOR2X1M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR2X2M (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XNOR2X2M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR2X4M (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XNOR2X4M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR2X8M (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XNOR2X8M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR2XLM (Y, A, B);
output Y;
input A, B;

  xnor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XNOR2XLM
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR3X1M (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XNOR3X1M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR3X2M (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XNOR3X2M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR3X4M (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XNOR3X4M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR3X8M (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XNOR3X8M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XNOR3XLM (Y, A, B, C);
output Y;
input A, B, C;

  xnor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XNOR3XLM
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR2X1M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XOR2X1M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR2X2M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XOR2X2M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR2X3M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XOR2X3M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR2X4M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XOR2X4M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR2X8M (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XOR2X8M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR2XLM (Y, A, B);
output Y;
input A, B;

  xor I0(Y, A, B);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0;

    // path delays
     if (B == 1'b1)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (B == 1'b0)
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if (A == 1'b1)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if (A == 1'b0)
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
  endspecify

endmodule // XOR2XLM
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR3X1M (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XOR3X1M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR3X2M (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XOR3X2M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR3X4M (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XOR3X4M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR3X8M (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XOR3X8M
`endcelldefine
//$Id: xor.genpp,v 1.1.1.1 2002/12/05 17:56:01 ron Exp $
//CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARTISAN COMPONENTS, INC.
//
//Copyright (c) 2005  Artisan Components, Inc.  All  Rights Reserved.
//
//Use of this Software is subject to the terms and conditions  of the
//applicable license agreement with Artisan Components, Inc. In addition,
//this Software is protected by patents, copyright law and international
//treaties.
//
//The copyright notice(s) in this Software does not indicate actual or
//intended publication of this Software.
//

`timescale 1ns/1ps
`celldefine
module XOR3XLM (Y, A, B, C);
output Y;
input A, B, C;

  xor I0(Y, A, B, C);

  specify
    // delay parameters
    specparam
      tplh$A$Y = 1.0,
      tphl$A$Y = 1.0,
      tplh$B$Y = 1.0,
      tphl$B$Y = 1.0,
      tplh$C$Y = 1.0,
      tphl$C$Y = 1.0;

    // path delays
     if ((B == 1'b1) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b1) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b1))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((B == 1'b0) && (C == 1'b0))
	(A *> Y) = (tplh$A$Y, tphl$A$Y);
     if ((A == 1'b1) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b1) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b1))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0) && (C == 1'b0))
	(B *> Y) = (tplh$B$Y, tphl$B$Y);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
        (C *> Y) = (tplh$C$Y, tphl$C$Y);
  endspecify

endmodule // XOR3XLM
`endcelldefine

// $Id: udp_sedff.v,v 1.1 2002/12/05 20:02:27 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//
 primitive udp_sedff (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any notifier changed
      ?    ?    0     ?   ?   ?   ?  : ?  :  0;     
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    1     1   1   ?   ?  : ?  :  1;
      ?    b    1     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    1     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    1     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      *    ?    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      ?    ?    ?     *   0   0   ?  : 0  :  0; // no changes when in switches
      ?    b    1     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?    ?    *     ?   0   0   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   ?   *   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     ?   *   ?   ?  : 0  :  0; // no changes when en switches
      ?    b    ?     *   ?   ?   ?  : 0  :  0; // no changes when en switches
      *    b    ?     ?   ?   ?   ?  : 0  :  0; // no changes when en switches
      ?  (10)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      ?    *    1     1   1   ?   ?  : 1  :  1;
      ?    x    1     1   1   ?   ?  : 1  :  1;
      ?    *    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    *    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      0    *    ?     0   ?   ?   ?  : 0  :  0 ; 
      0    x    ?     0   ?   ?   ?  : 0  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      1    *    1     1   ?   ?   ?  : 1  :  1 ; 
      1    x    1     1   ?   ?   ?  : 1  :  1 ; 
      ?  (x0)   ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    *    ?     ?   0   0   ?  : ?  :  -;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    x    ?     ?   0   0   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedff */
   

// $Id: udp_dff.v,v 1.1 2002/12/05 20:02:25 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for d flip-flops
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_dff (out, in, clk, clr_, set_, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  NOT  : Qt : Qt+1
//
   0  r   ?   1   ?   : ?  :  0  ; // clock in 0
   1  r   1   ?   ?   : ?  :  1  ; // clock in 1
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   ?  f   ?   ?   ?   : ?  :  -  ; // no changes on negedge clk
   *  b   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  b   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  x   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  b   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  x   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any notifier changed

   endtable
endprimitive // udp_dff

// $Id: udp_edfft.v,v 1.1 2002/12/05 20:02:26 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for d flip-flops with enable
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_edfft (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   ?   r    0      1     ?   ?    : ?  :  0  ; // clock in 0
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   ?   r    ?      0     ?   ?    : ?  :  1  ; // clock in 1
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    1      1     0   ?    : ?  :  -  ; // no changes, not enabled
   ?   *    ?      1     0   ?    : 0  :  0  ; // no changes, not enabled
   ?   *    1      ?     0   ?    : 1  :  1  ; // no changes, not enabled
   ?  (x0)  ?      ?     ?   ?    : ?  :  -  ; // no changes
   ?  (x1)  ?      0     ?   ?    : 1  :  1  ; // no changes
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   ?   x    1      ?     0   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   x    ?      1     0   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   b    *      ?     ?   ?    : ?  :  -  ; // no changes when clr_ switches
   ?   x    0      1     ?   ?    : 0  :  0  ; // no changes when clr_ switches
   ?   b    ?      *     ?   ?    : ?  :  -  ; // no changes when set_ switches
   ?   x    ?      0     ?   ?    : 1  :  1  ; // no changes when set_ switches
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any notifier changed

   endtable
endprimitive // udp_edfft

// $Id: udp_mux.v,v 1.1 2002/12/05 20:02:26 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_mux (out, in, s_in, s_sel);
   output out;  
   input  in, s_in, s_sel;

   table

// in  s_in  s_sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux

// $Id: udp_sedfft.v,v 1.1 2002/12/05 20:02:27 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for a 2-input mux used in scan cells
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//
 primitive udp_sedfft (out, in, clk, clr_, si, se, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, si, se,  en, NOTIFIER;
   reg    out;

   table
   // in  clk  clr_  si  se  en  NOT : Qt : Qt+1
      ?    ?    ?     ?   ?   ?   *  : ?  :  x; // any notifier changed
      ?    r    ?     0   1   ?   ?  : ?  :  0;     
      ?    r    ?     1   1   ?   ?  : ?  :  1;
      ?    b    ?     ?   *   ?   ?  : ?  :  -; // no changes when se switches
      ?    b    ?     *   ?   ?   ?  : ?  :  -; // no changes when si switches
      *    b    ?     ?   ?   ?   ?  : ?  :  -; // no changes when in switches
      ?    b    ?     ?   ?   *   ?  : ?  :  -; // no changes when en switches
      ?    b    *     ?   ?   ?   ?  : ?  :  -; // no changes when clr switches
      0    r    ?     0   ?   1   ?  : ?  :  0 ; 
      1    r    1     1   ?   1   ?  : ?  :  1 ; 
      ?    r    ?     0   ?   0   ?  : 0  :  0;
      ?    x    ?     0   ?   0   ?  : 0  :  0;
      ?    r    1     1   ?   0   ?  : 1  :  1;
      ?    x    1     1   ?   0   ?  : 1  :  1;
      ?    *    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     1   1   ?   ?  : 1  :  1;
      1    *    1     1   ?   ?   ?  : 1  :  1;
      ?    *    ?     0   1   ?   ?  : 0  :  0;
      ?    *    0     0   ?   ?   ?  : 0  :  0;
      0    *    ?     0   ?   ?   ?  : 0  :  0;
      ?    x    1     ?   0   0   ?  : ?  :  -;
      ?    *    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     ?   0   0   ?  : 0  :  0;
      ?    x    ?     1   1   ?   ?  : 1  :  1;
      1    x    1     1   ?   ?   ?  : 1  :  1;
      ?    x    ?     0   1   ?   ?  : 0  :  0;
      ?    x    0     0   ?   ?   ?  : 0  :  0;
      0    x    ?     0   ?   ?   ?  : 0  :  0;
      ?    r    0     0   ?   ?   ?  : ?  :  0 ; 
      ?   (?0)  ?     ?   ?   ?   ?  : ?  :  -;  // no changes on falling clk edge
      1    r    1     ?   0   1   ?  : ?  :  1;
      0    r    ?     ?   0   1   ?  : ?  :  0;
      ?    r    0     ?   0   ?   ?  : ?  :  0;
      ?    x    0     ?   0   ?   ?  : 0  :  0;
      1    x    1     ?   0   ?   ?  : 1  :  1; // no changes when in switches
      0    x    ?     ?   0   ?   ?  : 0  :  0; // no changes when in switches
      1    *    1     ?   0   ?   ?  : 1  :  1; // reduce pessimism
      0    *    ?     ?   0   ?   ?  : 0  :  0; // reduce pessimism

   endtable
endprimitive  /* udp_sedfft */
   

// $Id: udp_mux2.v,v 1.1 2002/12/05 20:02:26 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for 2-input muxes
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_mux2 (out, in0, in1, sel);
   output out;  
   input  in0, in1, sel;

   table

// in0 in1  sel :  out
//
   1  ?   0  :  1 ;
   0  ?   0  :  0 ;
   ?  1   1  :  1 ;
   ?  0   1  :  0 ;
   0  0   x  :  0 ;
   1  1   x  :  1 ;

   endtable
endprimitive // udp_mux2

// $Id: udp_tlat.v,v 1.1 2002/12/05 20:02:27 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for d latches
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_tlat (out, in, hold, clr_, set_, NOTIFIER);
   output out;  
   input  in, hold, clr_, set_, NOTIFIER;
   reg    out;

   table

// in  hold  clr_   set_  NOT  : Qt : Qt+1
//
   1  0   1   ?   ?   : ?  :  1  ; // 
   0  0   ?   1   ?   : ?  :  0  ; // 
   1  *   1   ?   ?   : 1  :  1  ; // reduce pessimism
   0  *   ?   1   ?   : 0  :  0  ; // reduce pessimism
   *  1   ?   ?   ?   : ?  :  -  ; // no changes when in switches
   ?  ?   ?   0   ?   : ?  :  1  ; // set output
   ?  1   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   1  ?   1   *   ?   : 1  :  1  ; // cover all transistions on set_
   ?  ?   0   1   ?   : ?  :  0  ; // reset output
   ?  1   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   0  ?   *   1   ?   : 0  :  0  ; // cover all transistions on clr_
   ?  ?   ?   ?   *   : ?  :  x  ; // any notifier changed

   endtable
endprimitive // udp_tlat

// $Id: udp_edff.v,v 1.1 2002/12/05 20:02:25 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for d flip-flops with enable
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_edff (out, in, clk, clr_, set_, en, NOTIFIER);
   output out;  
   input  in, clk, clr_, set_, en, NOTIFIER;
   reg    out;

   table

// in  clk  clr_   set_  en  NOT  : Qt : Qt+1
//
   0   r    ?      1     1   ?    : ?  :  0  ; // clock in 0
   1   r    1      ?     1   ?    : ?  :  1  ; // clock in 1
   ?   *    ?      ?     0   ?    : ?  :  -  ; // no changes, not enabled
   *   ?    ?      ?     0   ?    : ?  :  -  ; // no changes, not enabled
   1   *    1      ?     ?   ?    : 1  :  1  ; // reduce pessimism
   0   *    ?      1     ?   ?    : 0  :  0  ; // reduce pessimism
   ?   f    ?      ?     ?   ?    : ?  :  -  ; // no changes on negedge clk
   *   b    ?      ?     ?   ?    : ?  :  -  ; // no changes when in switches
   1   x    1      ?     ?   ?    : 1  :  1  ; // no changes when in switches
   0   x    ?      1     ?   ?    : 0  :  0  ; // no changes when in switches
   ?   b    ?      ?     *   ?    : ?  :  -  ; // no changes when en switches
   ?   x    1      1     0   ?    : ?  :  -  ; // no changes when en is disabled
   ?   ?    ?      0     ?   ?    : ?  :  1  ; // set output
   ?   b    1      *     ?   ?    : 1  :  1  ; // cover all transistions on set_
   ?   ?    1      *     0   ?    : 1  :  1  ; // cover all transistions on set_
   ?   ?    0      1     ?   ?    : ?  :  0  ; // reset output
   ?   b    *      1     ?   ?    : 0  :  0  ; // cover all transistions on clr_
   ?   ?    *      1     0   ?    : 0  :  0  ; // cover all transistions on clr_
   ?   ?    ?      ?     ?   *    : ?  :  x  ; // any notifier changed

   endtable
endprimitive // udp_edff

// $Id: udp_mux4.v,v 1.1 2002/12/05 20:02:26 ron Exp $
//
// Copyright (c) 1993-1997 Artisan Components, Incorporated. All Rights Reserved.
//
//
// verilog UDP for 4-input muxes
//
//
// Artisan Components Incorporated
// 1195 Bordeaux Drive
// Sunnyvale, CA  94089-1210
// (408) 734-5600
//
//
//
//

primitive udp_mux4 (out, in0, in1, in2, in3, sel_0, sel_1);
   output out;  
   input  in0, in1, in2, in3, sel_0, sel_1;

   table

// in0 in1 in2 in3 sel_0 sel_1 :  out
//
   0  ?  ?  ?  0  0  :  0;
   1  ?  ?  ?  0  0  :  1;
   ?  0  ?  ?  1  0  :  0;
   ?  1  ?  ?  1  0  :  1;
   ?  ?  0  ?  0  1  :  0;
   ?  ?  1  ?  0  1  :  1;
   ?  ?  ?  0  1  1  :  0;
   ?  ?  ?  1  1  1  :  1;
   0  0  ?  ?  x  0  :  0;
   1  1  ?  ?  x  0  :  1;
   ?  ?  0  0  x  1  :  0;
   ?  ?  1  1  x  1  :  1;
   0  ?  0  ?  0  x  :  0;
   1  ?  1  ?  0  x  :  1;
   ?  0  ?  0  1  x  :  0;
   ?  1  ?  1  1  x  :  1;
   1  1  1  1  x  x  :  1;
   0  0  0  0  x  x  :  0;

   endtable
endprimitive // udp_mux4
