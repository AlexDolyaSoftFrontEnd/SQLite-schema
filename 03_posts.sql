-- Таблица постов / статей
-- Используется для CMS, блогов и контентных страниц

CREATE TABLE posts (
  -- Первичный ключ поста
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Автор поста
  author_id INTEGER NOT NULL,

  -- Заголовок поста
  title TEXT NOT NULL,

  -- Человекочитаемый URL (SEO)
  slug TEXT UNIQUE,

  -- Основное содержимое поста
  content TEXT,

  -- Статус публикации (draft / published)
  status TEXT DEFAULT 'draft',

  -- Дата публикации
  published_at DATETIME,

  -- Дата создания записи
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

  -- Связь с таблицей пользователей
  FOREIGN KEY (author_id) REFERENCES users(id)
);
