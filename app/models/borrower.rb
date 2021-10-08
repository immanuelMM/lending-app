class Borrower < ApplicationRecord
    has_many :co_makers
    has_many :collaterals

    def interest
        monthly_pay * 0.20
    end



    def monthly_pay
        if nil
            self.price_lend / self.months_to_pay.to_i
        else
            self.price_lend / self.months_to_pay.to_i
        end
    end

    def weekly_pay
    end

end
