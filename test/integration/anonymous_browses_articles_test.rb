require 'test_helper'

class AnonymousBrowsesArticlesTest
    test "view a list of articles" do
        Post.create!(title: "First Post!!", body: "This is awkward...I have nothing to say :(")
        Post.create!(title: "Wow, It's been a while!", body: "And yet, I'm still not a write :( :( lolol")
        visit '/posts'
        assert_equal 2, Post.count
        assert_include page.body, "First Post!!"
        assert_include page.body, "Wow, It's been a while!"
    end
end