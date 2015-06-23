client = Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['ELASTICSEARCH_URL'] || 'http://localhost:9200'

# Book.__elasticsearch__.client.indices.delete index: Book.index_name rescue nil

if defined? Mongoid
  Elasticsearch::Model::Response::Result.include Extensions::Elasticsearch::Model::Response::Hashable
end

unless Book.__elasticsearch__.index_exists?
  Book.__elasticsearch__.create_index! force: true
  Book.import
end

unless User.__elasticsearch__.index_exists?
  User.__elasticsearch__.create_index! force: true
  User.import
  Adviser.import
end
