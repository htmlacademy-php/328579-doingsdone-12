CREATE DATABASE IF NOT EXISTS todo
   DEFAULT CHARACTER SET utf8
   DEFAULT COLLATE utf8_general_ci;

USE todo;

CREATE TABLE IF NOT EXISTS projects (
                                      id INT AUTO_INCREMENT PRIMARY KEY,
                                      name VARCHAR(255) NOT NULL ,
                                      user_id INT NOT NULL

  );

CREATE TABLE IF NOT EXISTS task (
                                  id INT AUTO_INCREMENT PRIMARY KEY,
                                  user_id INT NOT NULL,
                                  proeject_id INT NOT NULL,
                                  dt_add TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                  status BOOL DEFAULT 0,
                                  title VARCHAR(255) NOT NULL,
                                  file_path VARCHAR(255),
                                  data_exp DATE NULL,
                                  INDEX(user_id),
                                  INDEX(title),
                                  INDEX(data_exp)

  );

CREATE TABLE IF NOT EXISTS users (
                                   id INT AUTO_INCREMENT PRIMARY KEY,
                                   dt_reg TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                   email VARCHAR(128) NOT NULL UNIQUE,
                                   name VARCHAR(255) NOT NULL,
                                   password VARCHAR(255) NOT NULL,
                                   INDEX(name)



  );

ALTER TABLE projects
  ADD FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE;
ALTER TABLE task
  ADD FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
	ADD FOREIGN KEY (proeject_id) REFERENCES projects (id) ON DELETE CASCADE;

