class HerokuPage
  def initialize(driver)
    @driver = driver
  end

  TABLES_PAGE_CSS = "table.tablesorter"
  SECOND_TABLE_CSS = "table#table2"
  LAST_NAME_COLUMN_CSS = "td.last-name"

  def verify_tables_page
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    assert @driver.find_element(:css => TABLES_PAGE_CSS).displayed?
  end

  def get_second_table
    assert @driver.find_element(:css => SECOND_TABLE_CSS).displayed?
  end

  def sort_ascending
    return @driver.find_elements(:css => LAST_NAME_COLUMN_CSS).map{|x| x.text}.sort
  end

  def sort_descending
    return @driver.find_elements(:css => LAST_NAME_COLUMN_CSS).map{|x| x.text}.sort.reverse
  end

  def compare_ascending_elements(sorted_elements)
    assert sort_ascending.join(' ') == sorted_elements
  end

  def compare_descending_elements(sorted_elements)
    assert sort_descending.join(' ') == sorted_elements
  end


  # def get_last_name_descending()
  #   last_name = @driver.find_elements(:css => LAST_NAME_COLUMN_CSS).map{|x| x.text}
  #   last_name_sort_descending = last_name.sort.reverse
  # end

end
