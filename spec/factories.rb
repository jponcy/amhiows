FactoryGirl.define do
  factory :product, class: Product do
    label       'Mon produit'
    range_id    1
    price       34.6
    quantity    1
    description 'Cette article est le meilleur.'
  end
end
