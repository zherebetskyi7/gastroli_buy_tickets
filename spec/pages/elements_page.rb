class ElementsPage < SitePrism::Page
  set_url 'https://gastroli.ua/'
  	#click_by_ticket_spec
  element :buy_ticket_slider,     :xpath, '//a[@class="buy-ticket"]'
    #2-nd test
  element :fiveth_picture,        :xpath, '//img[@src="https://gastroli.s3.amazonaws.com/uploads/event/thumb_favorite_image/984/standart_mini_magick20150929-4230-1c7q1mo"][@alt=""][@title=""]'
    #3-rd test
  element :tenth_picture,         :xpath, '//img[@src="https://gastroli.s3.amazonaws.com/uploads/event/thumb_favorite_image/1097/standart_mini_magick20150915-11717-18dpq11.jpg"]'
    #4-th test
  element :fourth_picture,        :xpath, '//img[@src="https://gastroli.s3.amazonaws.com/uploads/event/thumb_favorite_image/441/standart_mini_magick20150414-23403-kledwe"]'
  element :button_more_info,      :xpath, '//div[@class="icon icon-info"]'
  element :button_buy_ticket,     :xpath, '//a[@class="buy-ticket button"]'
    #5-th test
  element :second_picture,        :xpath, '//img[@src="https://gastroli.s3.amazonaws.com/uploads/event/thumb_favorite_image/1121/standart_mini_magick20151026-18616-1peipfk"][@alt=""][@title=""]'
  element :event_buy_ticket,      :xpath, '//section[@class="event-buy-ticket"]'
    #6-th test
  element :click_on_calendar,     :xpath, '//input[@data-bind="value: datePicker"][@name="date"][@type="text"]'
  element :choose_first_event,    :xpath, '//img[@alt=""][@src="https://gastroli.s3.amazonaws.com/uploads/event/promo_image/1090/mini_magick20151020-18375-e36ks9"][@title=""]'
  element :buy_ticket_big_field,  :xpath, '//a[@class="buy-ticket"]'
    #registration and choose tickets
  element :find_select_panel,     :xpath, '//ul[@class="ticket-item-panel"][@tt_id="189"]'
  element :phone_click,           :xpath, '//input[@id="tel"][@name="tel"][@placeholder="Телефон"]'
  element :button_submit,         :xpath, '//button[@class="progress-button"][@id="submit"]'
    #elements of credit card
  element :first_num_card,        :xpath, '//input[@type="text"][@class="textinp first card_number1"][@maxlength="4"][@tabindex="1"][@title="card number"][@required=""]'
  element :second_num_card,       :xpath, '//input[@type="text"][@class="textinp card_number2"][@tabindex="2"][@title="card number"][@required=""]'
  element :third_num_card,        :xpath, '//input[@type="text"][@class="textinp card_number3"][@maxlength="4"][@tabindex="3"][@title="card number"][@required=""]'
  element :fourth_card,           :xpath, '//input[@type="text"][@class="textinp card_number4"][@maxlength="4"][@tabindex="4"][@title="card number"][@required=""]'
  element :month_card,            :xpath, '//input[@type="text"][@class="textinp card_valid_m"][@maxlength="2"][@tabindex="5"][@autocomplete="off"][@title="card expiration month"][@required=""]'
  element :year_card,             :xpath, '//input[@type="text"][@class="textinp card_valid_y"][@maxlength="2"][@tabindex="6"][@autocomplete="off"][@title="card expiration year"]'
  element :name_card,             :xpath, '//input[@type="text"][@class="textinp owner_name card_holdername"][@tabindex="8"][@title="cardholder name"]'
  element :password_card,         :xpath, '//input[@type="password"][@class="textinp card_cvv"][@maxlength="3"][@tabindex="7"][@autocomplete="off"][@title="card cvv"]'


end


