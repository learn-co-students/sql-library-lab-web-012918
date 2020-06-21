def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY LENGTH(motto) DESC LIMIT 1
  "
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY species DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name
  FROM authors
  JOIN series ON series.author_id = authors.id
  JOIN subgenres ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT title
   FROM series
   JOIN characters ON characters.series_id = series.id
   GROUP BY species
   HAVING MAX(characters.species) = 'human'
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name, COUNT(character_id)
  FROM characters
  JOIN character_books ON characters.id = character_books.character_id
  GROUP BY name
  ORDER BY COUNT(character_id) DESC
  "
end
