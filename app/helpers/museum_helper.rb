module MuseumHelper

  def photo_tag museum, size = :full, options = {}
    id = museum.id % 10
    if size == :thumb
      image_tag "museums/thumb/#{id}.jpg", options
    else
      image_tag "museums/full/#{id}.jpg", options
    end
  end

  def photo_path museum, size = :full
    id = museum.id % 10
    if size == :thumb
      asset_path "museums/thumb/#{id}.jpg"
    else
      asset_path "museums/full/#{id}.jpg"
    end
  end

end
