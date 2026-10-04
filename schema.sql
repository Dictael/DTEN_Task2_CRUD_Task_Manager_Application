CREATE DATABASE IF NOT EXISTS dten_task_manager CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE dten_task_manager;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS tasks (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  title VARCHAR(150) NOT NULL,
  description TEXT,
  status ENUM('pending','in_progress','completed') NOT NULL DEFAULT 'pending',
  priority ENUM('low','medium','high') NOT NULL DEFAULT 'medium',
  due_date DATE NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT fk_tasks_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  INDEX idx_tasks_user (user_id),
  INDEX idx_tasks_status (status),
  INDEX idx_tasks_priority (priority)
);
