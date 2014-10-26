with Cairo;
with Cairo.Png;
with Cairo.SVG;
with Cairo.PDF;
with Cairo.Font_Options;
with Cairo.Surface;
with Cairo.Image_Surface;

procedure Cairo_Test is
   --  On some platforms you may need to tell the linker where to find the cairo
   --  libraries.

   --  pragma Linker_Options ("-LC:\GtkAda\lib");
   --  Windows example
   --  pragma Linker_Options ("-L/opt/xnadalib-2014/lib");
   --  Mac example (if not installed using homebrew or macports)

   pragma Linker_Options ("-lcairo");

   Surface : Cairo.Cairo_Surface;
   Context : Cairo.Cairo_Context;
   Status  : Cairo.Cairo_Status;
begin
   Surface := Cairo.Image_Surface.Create
     (Format => Cairo.Image_Surface.Cairo_Format_ARGB32,
      Width  => 240,
      Height => 80);

--     Surface := Cairo.PDF.Create
--       (Filename         => "hello.pdf",
--        Width_In_Points  => 180.0,
--        Height_In_Points => 180.0);

--     Surface := Cairo.SVG.Create
--       (Filename        => "hello.svg",
--        Width_In_Point  => 180.0,
--        Height_In_Point => 180.0);
--
--  The above can be used and hello.svg or .pdf output. You can still write
--  out a Png at the end

   Context := Cairo.Create (Surface);

   Cairo.Select_Font_Face (Cr     => Context,
                           Family => "serif",
                           Slant  => Cairo.Cairo_Font_Slant_Normal,
                           Weight => Cairo.Cairo_Font_Weight_Normal);
   Cairo.Set_Font_Size (Cr   => Context,
                        Size => 32.0);
   Cairo.Set_Source_Rgb (Cr    => Context,
                         Red   => 0.0,
                         Green => 0.1,
                         Blue  => 1.0);
   Cairo.Move_To (Cr => Context,
                  X  => 10.0,
                  Y  => 50.0);
   Cairo.Show_Text (Cr   => Context,
                    Utf8 => "Hello World!");

   Cairo.Destroy (Context);

   Status := Cairo.Png.Write_To_Png (Surface, "hello.png");

   Cairo.Surface.Destroy (Surface);

end Cairo_Test;
