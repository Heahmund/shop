class Product < ApplicationRecord
    validates :title, :description, :image_url, presence: { message: 'Должен быть заполнен' } 
    validates :title, uniqueness: true
    validates :price, numericality: {greater_than_or_equal_to: 0.01, message: 'Значение некорректно или пусто' } 
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\z}i,
        message: 'долен быть введен URL для GIF, JPG или PNG изображения.'
        }
end
