client = Elasticsearch::Model.client = Elasticsearch::Client.new url: ENV['ELASTICSEARCH_URL'] || 'http://localhost:9200'

# Book.__elasticsearch__.client.indices.delete index: Book.index_name rescue nil

unless Book.__elasticsearch__.index_exists?
  Book.__elasticsearch__.create_index! force: true
  Book.import
end

# client.indices.delete index: Book.index_name rescue nil
# client.bulk index: Book.index_name,
#             type:  'book',
#             body:  Book.all.map { |b| { index: { _id: b.id.to_s, data: b.attributes } } },
#             refresh: true
