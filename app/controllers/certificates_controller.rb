class CertificatesController < InheritedResources::Base
 # POST /certificates
  # POST /certificates.json
  def create
    @certificate = Certificate.new(params[:referral])

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to @certificate, notice: 'Certificate was successfully created.' }
        format.json { render json: @certificate, status: :created, location: @certificate }
      else
        format.html { render action: "new" }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end
end
