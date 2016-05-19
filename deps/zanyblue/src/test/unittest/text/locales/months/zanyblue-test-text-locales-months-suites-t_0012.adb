--
--  ZanyBlue, an Ada library and framework for finite element analysis.
--
--  Copyright (c) 2012, 2016, Michael Rohan <mrohan@zanyblue.com>
--  All rights reserved.
--
--  Redistribution and use in source and binary forms, with or without
--  modification, are permitted provided that the following conditions
--  are met:
--
--    * Redistributions of source code must retain the above copyright
--      notice, this list of conditions and the following disclaimer.
--
--    * Redistributions in binary form must reproduce the above copyright
--      notice, this list of conditions and the following disclaimer in the
--      documentation and/or other materials provided with the distribution.
--
--    * Neither the name of ZanyBlue nor the names of its contributors may
--      be used to endorse or promote products derived from this software
--      without specific prior written permission.
--
--  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
--  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
--  HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
--  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
--  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
--  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
--  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
--  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
--  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--

separate (ZanyBlue.Test.Text.Locales.Months.Suites)
procedure T_0012 (T : in out Test_Case'Class) is

   L : constant Locale_Type := Make_Locale ("ar");

begin
   Check_Value (T, Full_Month_Name (L, Jan), "يناير",
                "ar full month name, Jan");
   Check_Value (T, Full_Month_Name (L, Feb), "فبراير",
                "ar full month name, Feb");
   Check_Value (T, Full_Month_Name (L, Mar), "مارس",
                "ar full month name, Mar");
   Check_Value (T, Full_Month_Name (L, Apr), "أبريل",
                "ar full month name, Apr");
   Check_Value (T, Full_Month_Name (L, May), "مايو",
                "ar full month name, May");
   Check_Value (T, Full_Month_Name (L, Jun), "يونيو",
                "ar full month name, Jun");
   Check_Value (T, Full_Month_Name (L, Jul), "يوليو",
                "ar full month name, Jul");
   Check_Value (T, Full_Month_Name (L, Aug), "أغسطس",
                "ar full month name, Aug");
   Check_Value (T, Full_Month_Name (L, Sep), "سبتمبر",
                "ar full month name, Sep");
   Check_Value (T, Full_Month_Name (L, Oct), "أكتوبر",
                "ar full month name, Oct");
   Check_Value (T, Full_Month_Name (L, Nov), "نوفمبر",
                "ar full month name, Nov");
   Check_Value (T, Full_Month_Name (L, Dec), "ديسمبر",
                "ar full month name, Dec");
end T_0012;
