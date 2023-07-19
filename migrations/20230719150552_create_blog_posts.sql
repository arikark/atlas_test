-- Modify "users" table
ALTER TABLE `users` DROP COLUMN `email`, ADD COLUMN `emails` varchar(255) NOT NULL, ADD COLUMN `mobile` varchar(255) NOT NULL;
-- Modify "posts" table
ALTER TABLE `posts` ADD INDEX `post_author` (`user_id`), DROP FOREIGN KEY `posts_ibfk_1`, ADD CONSTRAINT `post_author` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE;
