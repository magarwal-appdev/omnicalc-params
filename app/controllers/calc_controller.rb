class CalcController < ApplicationController
    def flex_square
        # the parameters look like this: {"the_num" => "42"}
        # rails puts the hash in a variable called params
    
        @num = params.fetch("the_num").to_f
        @square = @num ** 2
        render("calc_templates/flexible_square.html.erb")
    end
    
    def flex_square_root
        
        @num = params.fetch("input").to_f
        @square_root = @num ** 0.5
        render("calc_templates/flex_square_root.html.erb")
    end
    
    def flex_random
        @first_num = params.fetch("num1").to_i
        @second_num = params.fetch("num2").to_i
        @rand_num = rand(@first_num...@second_num)
        render("calc_templates/flexible_random.html.erb")
    end
    
    def flex_payment
        @int_rate = (params.fetch("basis_points").to_f)/100
        @time_yrs = params.fetch("time_yrs").to_i
        @principal = params.fetch("loan_amount").to_i
        loan_payment = ((@int_rate/1200)*@principal)/(1-(1+(@int_rate/1200))**(-1*@time_yrs*12))
        @monthly_payment = loan_payment.round(2).to_s
        
        render("calc_templates/flexible_payment.html.erb")
    end
    
    def form_square
        @input = params.fetch("user_number").to_f
        
        @output = @input ** 2
        
        render("calc_templates/form_square_results.html.erb")
    end
    
    def blank_square
        # render("calc_templates/trial.html.erb")
        render("calc_templates/form_square_blank.html.erb")
    end
    
    def form_square_root
        @input = params.fetch("user_number").to_f
        
        # @output = @input ** 0.5
        
        @output = Math.sqrt(@input)
        
        render("calc_templates/form_sqroot_results.html.erb")
    end
    
    def blank_square_root
        render("calc_templates/form_sqroot_blank.html.erb")
    end
    
    def form_payment
        @input_apr = params.fetch("user_apr").to_f
        @input_time = params.fetch("user_years").to_f
        @input_pv = params.fetch("user_pv").to_f
        
        loan_payment = ((@input_apr/1200)*@input_pv)/(1-(1+(@input_apr/1200))**(-1*@input_time*12))
        @monthly_payment = loan_payment.round(2)
        
        render("calc_templates/payment_results.html.erb")
    end
    
    def blank_payment_form
        render("calc_templates/payment_results_blank.html.erb")
    end
    
    def form_random_results
        @min_num = params.fetch("user_min").to_f
        @max_num = params.fetch("user_max").to_f
        @rand_num = rand(@min_num...@max_num)
        render("calc_templates/random_results_pg.html.erb")
    end
    
    def form_random_blank
        render("calc_templates/random_results_blank.html.erb")
    end
    
end