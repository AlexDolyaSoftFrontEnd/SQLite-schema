-- Таблица комментариев
-- Хранит комментарии к постам, включая анонимные

CREATE TABLE comments (
  -- Первичный ключ комментария
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Идентификатор поста
  post_id INTEGER NOT NULL,

  -- Идентификатор пользователя (может быть NULL)
  user_id INTEGER,

  -- Текст комментария
  message TEXT NOT NULL,

  -- Дата создания комментария
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,

  -- Удаление комментариев при удалении поста
  FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,

  -- Связь с пользователем без каскадного удаления
  FOREIGN KEY (user_id) REFERENCES users(id)
);
