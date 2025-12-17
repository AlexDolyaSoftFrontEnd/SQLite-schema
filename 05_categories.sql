-- Таблица категорий
-- Универсальная классификация для контента и товаров

CREATE TABLE categories (
  -- Первичный ключ категории
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Название категории
  name TEXT NOT NULL,

  -- Уникальный slug категории
  slug TEXT UNIQUE,

  -- Описание категории
  description TEXT
);
