class Adviser < User
  include Elasticsearch::Model

  index_name "users-#{Rails.env}"
  document_type "adviser"
end
