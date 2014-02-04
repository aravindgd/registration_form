class registration_forms_drawer
def self.draw(registration_forms)
	pdf=PDF::Writer.new
	registration_forms.each do |registration_form|
        pdf.text registration_forms.name
  end
  pdf.render
end
end