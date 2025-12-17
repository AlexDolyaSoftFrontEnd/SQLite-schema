-- Таблица логов активности
-- Используется для аудита и отслеживания действий

CREATE TABLE activity_logs (
  -- Первичный ключ записи
  id INTEGER PRIMARY KEY AUTOINCREMENT,

  -- Пользователь, выполнивший действие
  user_id INTEGER,

  -- Описание действия
  action TEXT NOT NULL,

  -- Тип сущности (post, order, product и т.д.)
  entity TEXT,

  -- Идентификатор сущности
  entity_id INTEGER,

  -- IP-адрес
  ip_address TEXT,

  -- Дата и время события
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
