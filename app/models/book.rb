class Book < ApplicationRecord
	enum category: {日本:1, 海外:2}
end
