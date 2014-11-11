class Interest < ActiveRecord::Base

   validates :url, presence: true, format: URI::regexp(%w(http https))

  before_validation do
    if url.present? && !url.start_with?("http")
      self.url = ["http://", url].join
    end
  end


  validates :photo, :notes, presence: true
  mount_uploader :photo, PhotoUploader

  paginates_per 1000

include PgSearch
pg_search_scope :search,
                against: [:notes],
                using: {
                  tsearch: {dictionary: "english"}
                }

  belongs_to :user

end
