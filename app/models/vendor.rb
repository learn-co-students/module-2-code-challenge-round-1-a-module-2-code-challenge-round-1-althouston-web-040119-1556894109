class Vendor < ApplicationRecord

    has_many :vendorsweets
    has_many :sweets, through: :vendorsweets

end
