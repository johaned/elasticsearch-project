class Book
  include Mongoid::Document
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  index_name "books-#{Rails.env}"

  field :title, type: String
  field :author, type: String

  def as_indexed_json(options={})
    as_json(except: [:id, :_id])
  end
end
