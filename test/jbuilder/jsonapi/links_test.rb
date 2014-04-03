require_relative '../../test_helper.rb'

describe "Jbuilder#links" do
  def double(opts)
    OpenStruct.new(opts)
  end

  let(:post) {
    comments = [double(id:1)]
    user = double(id:1)
    tags = [double(id:1)]
    OpenStruct.new(comments:comments, user:user, tags:tags)
  }

  it "renders the list of ids" do
    json = Jbuilder.encode do |json|
      json.links do
        json.links! post, :comments, :user, :tags
      end
    end

    assert_equal json, "{\"links\":{\"comments\":[1],\"user\":1,\"tags\":[1]}}"
  end
end
