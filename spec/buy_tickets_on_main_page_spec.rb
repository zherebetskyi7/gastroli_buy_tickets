require 'spec_helper'

describe "Click on button 'buy ticket' on slider" do
	it "When User open gastroli.ua and click on button 'buy ticket'
		User must redirect to 'choose the seat and registration' page" do
		
		@page = GastroliPages::Navigation.new
		visit 'https://gastroli.ua/'
		sleep 2
		@page.elements_page.buy_ticket_slider.click
		sleep 2
		expect(page).to have_content('ВИБІР МІСЦЯ ТА ОФОРМЛЕННЯ ЗАМОВЛЕННЯ')
	end
	it "When User open gastroli.ua and choose the 5-th picture 
		in a string of 10 popular events and click on button 'buy ticket'
		User must redirect to 'choose the seat and registration' page" do
		
		@page = GastroliPages::Navigation.new
		visit "https://gastroli.ua"
		@page.elements_page.fiveth_picture.click
		sleep 1
		@page.elements_page.buy_ticket_slider.click
		sleep 2
		expect(page).to have_content('ВИБІР МІСЦЯ ТА ОФОРМЛЕННЯ ЗАМОВЛЕННЯ')
	end
	it "When User open gastroli.ua and choose the 10-th picture 
		in a string of 10 popular events and click on button 'buy ticket'
		User must redirect to 'choose the seat and registration' page" do
		
		@page = GastroliPages::Navigation.new
		visit 'https://gastroli.ua'
		@page.elements_page.tenth_picture.click
		sleep 1
		@page.elements_page.buy_ticket_slider.click
		expect(page).to have_content('Оберіть тип та кількість квитків')
	end
	it "more information page, click on button buy-ticket" do

		@page = GastroliPages::Navigation.new
		visit 'https://gastroli.ua'
		@page.elements_page.fourth_picture.click
		@page.elements_page.button_more_info.click
		sleep 2
		@page.elements_page.button_buy_ticket.click
		sleep 2
		expect(page).to have_content('ВИБІР МІСЦЯ ТА ОФОРМЛЕННЯ ЗАМОВЛЕННЯ')
	end
	it "more information page, click on event-buy-ticket" do

		@page = GastroliPages::Navigation.new
		visit 'https://gastroli.ua'
		@page.elements_page.second_picture.click
		@page.elements_page.button_more_info.click
		sleep 2
		@page.elements_page.event_buy_ticket.click
		sleep 2
		expect(page).to have_content('ВИБІР МІСЦЯ ТА ОФОРМЛЕННЯ ЗАМОВЛЕННЯ')
	end
	it "when user choose another date" do

		@page = GastroliPages::Navigation.new
		visit "https://gastroli.ua"
		sleep 3
		@page.elements_page.click_on_calendar.click
		find(:xpath, '//div[@class="datepicker-days"][@style="display: block;"]').find(:xpath, '//td[@class="day active"]').click
		sleep 3
		@page.elements_page.choose_first_event.hover
		sleep 1
		@page.elements_page.buy_ticket_big_field.click
		sleep 2
		expect(page).to have_content('ВИБІР МІСЦЯ ТА ОФОРМЛЕННЯ ЗАМОВЛЕННЯ')
	end
end