-- Таблица профилей пользователей
-- Расширяет сущность пользователя (связь 1 к 1)

CREATE TABLE user_profiles (
  -- Первичный ключ профиля
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Идентификатор пользователя
  user_id INTEGER NOT NULL,

  -- Ссылка на аватар пользователя
  avatar_url TEXT,

  -- Краткая биография
  bio TEXT,

  -- Контактный номер телефона
  phone TEXT,

  -- Страна проживания
  country TEXT,

  -- Каскадное удаление профиля при удалении пользователя
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
