module CustomHelpers
  def last_update
    File.mtime(__FILE__)
  end

  def copyright_year
    start_year = 2013
    this_year = Time.now.year
    start_year == this_year ? start_year : "#{start_year}-#{this_year}"
  end
end
