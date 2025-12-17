-- Таблица пользователей
-- Хранит данные аутентификации, роли и состояние учетной записи

CREATE TABLE users (
  -- Первичный ключ пользователя
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Email для входа, должен быть уникальным
  email TEXT NOT NULL UNIQUE,

  -- Хеш пароля (bcrypt / argon2 и т.д.)
  password_hash TEXT NOT NULL,

  -- Отображаемое имя пользователя
  name TEXT,

  -- Роль пользователя (user / admin)
  role TEXT DEFAULT 'user',

  -- Флаг активности учетной записи
  is_active INTEGER DEFAULT 1,

  -- Дата и время создания пользователя
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
