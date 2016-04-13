class WelcomeController < ApplicationController
  def index
  end

    # Accion para llamar y exportar un pdf con pdfkit. Se construye con HTML y se convierte a PDF
  def print_pdfkit
    @personas=Persona.all
    @html = render_to_string(:action=> "reporte.html.erb", :layout => false,
         :disposition => 'inline')

    kit = PDFKit.new(@html)
    kit.stylesheets << "#{Rails.root}/app/assets/stylesheets/pdf.css"

    send_data(kit.to_pdf, :filename => "example.pdf",
       :type => 'application/pdf')
  end


  def print1
	output = ReportePrueba.new(:page_size => 'A4').to_pdf
    respond_to do |format|
		format.html do
			send_data output, :filename => 'products.pdf',
							  :type => "application/pdf"
		end
	end
  end

end
