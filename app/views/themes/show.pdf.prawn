pdf.text @theme.name, :size => 20, :style => :bold, :align => :center

pdf.move_down(30)

categories = @theme.categories.all

categories.each do |cat|
  pdf.text "#{cat.name.capitalize} :", :size => 18, :style => :bold
  cat.infos.each do |info|
    pdf.text info.name.capitalize, :style => :bold
    pdf.text info.adresse, :style => :italic
    pdf.move_down(5)
  end
  pdf.move_down(10)
end
