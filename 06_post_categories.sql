-- Связующая таблица постов и категорий
-- Реализация связи многие-ко-многим

CREATE TABLE post_categories (
  -- Идентификатор поста
  post_id INTEGER NOT NULL,

  -- Идентификатор категории
  category_id INTEGER NOT NULL,

  -- Составной первичный ключ
  PRIMARY KEY (post_id, category_id),

  -- Удаление связей при удалении поста
  FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,

  -- Удаление связей при удалении категории
  FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE
);
