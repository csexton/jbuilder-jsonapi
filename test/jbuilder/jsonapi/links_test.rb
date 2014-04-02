require_relative '../../test_helper.rb'

describe "Jbuilder#links" do

  it "renders the list of ids" do
    json = Jbuilder.encode do |json|
      json.links do
        json.links! post, :comments, :user, :tags
      end
    end
    assert json # is something like:
      # The output should be something like this
      #     {
      #       "links": {
      #         "comments": [1,2,3,4,5],
      #         "user": 2,
      #         "tags": [30,31,32,33]
      #     }
  end
end
