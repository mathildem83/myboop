class PaymentsController < ApplicationController

  def new
    @order = Order.find(params[:order_id])

    # list of all specialty
    @all_specialty = [
      {
        specialty: "Vétérinaire",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1733824916/judy-beth-morris-5Bi6MWlWMbw-unsplash_funbpk.jpg"
      },
      {
        specialty: "Toiletteur",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1733824916/reba-spike-PEQIIwnIGdo-unsplash_yfvjlt.jpg"
      },
      {
        specialty: "Comportementaliste",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1734359896/comportementalist_wthrkt.jpg"
      },
      {
        specialty: "Pension",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1734359894/pension_ujblqm.jpg"
      },
      {
        specialty: "Promeneur",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1733824978/development/m4vlzbcsqfd656mz4bfevhz4gybu.jpg"
      },
      {
        specialty: "Nutritionniste",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1734359894/nutritionniste_jyqrm8.jpg"
      },
      {
        specialty: "Petsitter",
        photo: "https://res.cloudinary.com/dsbteudoz/image/upload/v1734359894/petsitter_fskzo9.jpg"
      }
    ]

    index = @all_specialty.index { |specialty| specialty[:specialty] == @order.pricing.specialty }
    @photo = @all_specialty[index][:photo]
  end

end