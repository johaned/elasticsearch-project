class Book
  include Mongoid::Document
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  index_name "users-#{Rails.env}"

  field :title, type: String
  field :author, type: String

  def as_indexed_json(options={})
    as_json(except: [:id, :_id])
  end
end
