require 'spec_helper'

describe "registration and buy tickets" do
	it "When User chose the seat and fill all 
	registration fields and click on button 'payment order', 
	User should redirect to payment page" do
		
		@page = GastroliPages::Navigation.new
		visit "https://gastroli.ua/tickets/quest-pistols-show-ticket-bilety-kiev-concert-questpistols/buy"
		@page.elements_page.find_select_panel.select('1', :between => 0..9)
		sleep 3
		fill_in('first_name', :with => Faker::Name.first_name) #enter First Name
		fill_in('last_name', :with => Faker::Name.last_name) #enter Last Name
		fill_in('client_email', :with => 'testing@gmail.com') #enter email
		@page.elements_page.phone_click.click
		sleep 3
		fill_in('tel', :with => Faker::Number.number(10))
		check('agree')
		sleep 2
		@page.elements_page.button_submit.click
		sleep 3
		expect(page).to have_content('Оплата замовлення / Gastroli.ua')
	end
	it "When User located in 'payment' page he fill all 
	fields and click button 'pay the order'.
	After that User should redirect to 'confirmation' page" do
		
		@page = GastroliPages::Navigation.new
		visit "https://gastroli.ua/tickets/quest-pistols-show-ticket-bilety-kiev-concert-questpistols/buy"
		@page.elements_page.find_select_panel.select('1', :between => 0..9)
		sleep 3
		fill_in('first_name', :with => Faker::Name.first_name) #enter First Name
		fill_in('last_name', :with => Faker::Name.last_name) #enter Last Name
		fill_in('client_email', :with => 'testing@gmail.com') #enter email
		@page.elements_page.phone_click.click
		sleep 3
		fill_in('tel', :with => Faker::Number.number(10))
		check('agree')
		sleep 2
		@page.elements_page.button_submit.click
		sleep 3
		expect(page).to have_content('Оплата замовлення / Gastroli.ua')
		sleep 2
		@page.elements_page.first_num_card.set(Faker::Number.number(4))
		@page.elements_page.second_num_card.set(Faker::Number.number(4))
		@page.elements_page.third_num_card.set(Faker::Number.number(4))
		@page.elements_page.fourth_card.set(Faker::Number.number(4))
		@page.elements_page.month_card.set(Faker::Number.between(10, 12))
		@page.elements_page.year_card.set(Faker::Number.between(2016, 2020))
		@page.elements_page.name_card.set(Faker::Name.name)
		@page.elements_page.password_card.set(Faker::Number.number(3))
		click_button('Оплатити')
		sleep 3
	end
end