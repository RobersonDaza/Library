class Search < ApplicationRecord

    def search_books

        books = Book.all

        books = books.where(["name LIKE ?", "%#{name}%"]) if name.present?
        books = books.where(["author LIKE ?", "%#{author}%"]) if author.present?
        books = books.where(["isbn LIKE ?", "%#{isbn}%"]) if isbn.present?

        return books

    end
end
