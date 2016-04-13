class ReportePrueba < Prawn::Document
  def to_pdf
/
    stroke_horizontal_rule
    pad(20) { text "Text padded both before and after." }


    float do
   move_down 30
     bounding_box([0, cursor], :width => 200) do
     text "Text written inside the float block."
     stroke_bounds
     end
    end

    text "Changed to red", :color => "FF0000"
    move_down 25
/
    
    /text "The image will go right below this line of text."
    image /

    /move_cursor_to 5/


    /Texto con titulo /
    /
    text "Example Title", :align => :center, :size => 18
  text "Niccolò Machiavelli", :align => :center, :size => 14
  move_down 15

    text "This text will flow to the next page. " * 50
  /


     bounding_box([0, cursor], :width => 500, :height => 50) do
     move_down 5
     text "Text written inside the float block.", :align=>:center
     stroke_bounds
     end



    render
  end
end