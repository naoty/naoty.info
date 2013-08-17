module CustomHelpers
  def page_title
    title = current_page.data.title
    title ? "#{title} - naoty.info" : "naoty.info"
  end

  def last_update
    path = File.join("source", current_path)
    path = Dir["#{path}.*"].first || ""
    FileTest.exist?(path) ? File.mtime(path) : Time.now
  end

  def copyright_year
    start_year = 2013
    this_year = Time.now.year
    start_year == this_year ? start_year : "#{start_year}-#{this_year}"
  end
end
