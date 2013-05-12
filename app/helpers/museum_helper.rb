module MuseumHelper

  def photo_tag museum, size = :full, options = {}
    if size == :thumb
      image_tag "museums/thumb/#{museum.id}.jpg", options
    else
      image_tag "museums/full/#{museum.id}.jpg", options
    end
  end

  def photo_path museum, size = :full
    if size == :thumb
      asset_path "museums/thumb/#{museum.id}.jpg"
    else
      asset_path "museums/full/#{museum.id}.jpg"
    end
  end

end
