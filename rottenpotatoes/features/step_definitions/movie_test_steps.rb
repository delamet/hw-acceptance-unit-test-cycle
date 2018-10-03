Given(/^the following movies exist:$/) do |table|
    table.hashes.each do |movie_row|
        Movie.create(movie_row)
    end
end


Then(/^the director of "(.*)" should be "(.*)"$/) do |movie, director|
    expect(page).to(have_content(director))
end
