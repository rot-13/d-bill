class ClaimsController < ApplicationController
  def edit
    @claim = Claim.find(params[:id])
  end

  def create
  end

  def update
    claim = Claim.find(params[:id])
    claim.update_attributes(params.require(:claim).permit(:amount_cents, :tip_amount_cents))
    redirect_to bill_path(claim.bill, name: claim.name)
  end
end
