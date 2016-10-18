module ApplicationHelper
<<<<<<< HEAD
end
=======
  def full_title(page_title = '')
    base_title = "Bidder"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
