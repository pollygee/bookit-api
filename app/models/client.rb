require 'elasticsearch/model'

class Client < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_many :appointments
  has_many :pantry_days, through: :appointments
  has_many :voicemails
  has_many :notes, through: :voicemails

  def next_allowable_appointment 
    if pantry_days.any?
      pantry_days.to_a.max_by(&:date_time).date_time + 28.days
    else
      Time.now
    end
  end

  def self.efind(query)
    __elasticsearch__.search(
    {
    query: {
      fuzzy_like_this: {
          fields: ["first_name", "last_name", "display_phone"],
          like_text: query,
          max_query_terms: 12
        }
      }
    }
    )
  end

end
