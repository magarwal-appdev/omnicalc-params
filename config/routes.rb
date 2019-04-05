Rails.application.routes.draw do

    get("/flexible/square/:the_num", :controller => "calc", :action => "flex_square")
    
    get("/flexible/square_root/:input", :controller => "calc", :action => "flex_square_root")
    
    get("/flexible/random/:num1/:num2", :controller => "calc", :action => "flex_random")
    
    get("/flexible/payment/:basis_points/:time_yrs/:loan_amount", :controller => "calc", :action => "flex_payment")
    
    get("/square/results", :controller => "calc", :action => "form_square")
    
    get("/square/new", :controller => "calc", :action => "blank_square")
    
    get("square_root/results", :controller => "calc", :action => "form_square_root")
    
    get("/square_root/new", :controller => "calc", :action => "blank_square_root")
    
    get("/payment/results", :controller => "calc", :action => "form_payment")
    
    get("/payment/new", :controller => "calc", :action => "blank_payment_form")

    get("/random/results", :controller => "calc", :action => "form_random_results")
    
    get("/random/new", :controller => "calc", :action => "form_random_blank")
    
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
