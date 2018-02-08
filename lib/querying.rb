def select_books_titles_and_years_in_first_series_order_by_year
  "Select title, year from books where series_id = 1 order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "Select name, motto from characters order by length(motto) desc limit 1"
end


def select_value_and_count_of_most_prolific_species
  "Select species, COUNT(*) from characters group by species order by count(species) desc limit 1"
end

def select_name_and_series_subgenres_of_authors
  " SELECT authors.name, subgenres.name
    FROM authors
    JOIN series
    ON series.author_id = authors.id
    JOIN subgenres
    ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
    FROM series
    JOIN books
    ON books.series_id = series.id
    JOIN character_books
    ON character_books.book_id = books.id
    JOIN characters
    ON character_books.character_id = characters.id
    WHERE characters.species = 'human'
    GROUP BY series.title
    ORDER BY COUNT(*) DESC
    LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  " SELECT characters.name, COUNT(*) as book_count
    FROM character_books
    JOIN characters
    ON character_books.character_id = characters.id
    GROUP BY characters.name
    ORDER BY book_count DESC"
end
