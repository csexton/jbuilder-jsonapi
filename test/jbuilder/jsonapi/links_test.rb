require_relative '../../test_helper.rb'
class Comment
  def id
    1 
  end
end

class User
  def id
    1
  end
end

class Tags
  def id
    1
  end
end

class Post
  def comments
    [Comment.new]
  end

  def user
    User.new 
  end

  def tags
    [Tags.new]
  end
end

describe "Jbuilder#links" do
  let(:post) { Post.new }

  it "renders the list of ids" do
    json = Jbuilder.encode do |json|
      json.links do
        json.links! post, :comments, :user, :tags
      end
    end

    assert_equal json, "{\"links\":{\"comments\":[1],\"user\":1,\"tags\":[1]}}"
  end
end
