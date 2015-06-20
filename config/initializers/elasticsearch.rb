Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['ELASTICSEARCH_URL'] || 'http://localhost:9200'

unless Book.__elasticsearch__.index_exists?
  Book.__elasticsearch__.create_index! force: true
  Book.import
end
