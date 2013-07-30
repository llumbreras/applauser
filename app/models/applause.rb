class Applause < ActiveRecord::Base
  belongs_to :user

  default_scope { order("created_at DESC") }
  belongs_to :content, polymorphic: true
  
  def self.search term
  	text_applauses = TextApplause.where("body LIKE ?", "%#{term}%")
  	where(content_type: 'TextApplause', content_id: text_applauses)
  end

end
