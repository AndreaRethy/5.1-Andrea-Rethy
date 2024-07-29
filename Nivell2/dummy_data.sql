USE `youtube`;

-- Channels
INSERT INTO `youtube`.`channels` (name, description, creation_date) VALUES
('John\'s Tech Reviews', 'Tech reviews and tutorials', '2022-01-15 10:00:00'),
('Jane\'s Cooking Corner', 'Delicious recipes and cooking tips', '2022-02-20 11:00:00'),
('Alex\'s Travel Vlogs', 'Travel vlogs from around the world', '2022-03-25 12:00:00'),
('Chris\'s Fitness Channel', 'Fitness tips and workout routines', '2022-04-30 13:00:00'),
('Kim\'s Beauty Channel', 'Beauty tips and makeup tutorials', '2022-05-10 14:00:00');

-- Users
INSERT INTO `youtube`.`users` (email, password, birthday, sex, country, postal_code, channel_id) VALUES
('john.doe@example.com', 'password123', '1990-05-15', 'Male', 'USA', '90210', 1),
('jane.smith@example.com', 'password456', '1985-08-25', 'Female', 'Canada', 'A1B2C3', 2),
('alex.jones@example.com', 'password789', '1992-11-30', 'Non-binary', 'UK', 'SW1A 1AA', 3),
('chris.brown@example.com', 'password101', '1980-02-20', 'Male', 'Australia', '3000', 4),
('kim.lee@example.com', 'password202', '1995-06-10', 'Female', 'South Korea', '04524', 5);

-- Videos
INSERT INTO `youtube`.`videos` (title, description, file_size, filename, duration, thumbnail, watch_count, likes_count, dislikes_count, visibility, user_id) VALUES
('Best Smartphone 2023', 'Reviewing the best smartphones of 2023', 500, 'smartphone2023.mp4', 600, 'smartphone_thumb.jpg', 1000, 900, 50, 'public', 1),
('How to Make Pasta', 'Step-by-step guide to making pasta from scratch', 300, 'pasta_guide.mp4', 900, 'pasta_thumb.jpg', 2000, 1500, 20, 'public', 2),
('Top 10 Travel Destinations', 'Exploring the top 10 travel destinations for 2023', 700, 'travel_destinations.mp4', 1200, 'travel_thumb.jpg', 3000, 2800, 30, 'public', 3),
('Full Body Workout', 'Complete full body workout routine', 400, 'full_body_workout.mp4', 1800, 'workout_thumb.jpg', 500, 450, 10, 'public', 4),
('Everyday Makeup Tutorial', 'Easy everyday makeup tutorial', 350, 'makeup_tutorial.mp4', 720, 'makeup_thumb.jpg', 1500, 1400, 15, 'public', 5);

-- Tags
INSERT INTO `youtube`.`tags` (name) VALUES
('Tech'), ('Cooking'), ('Travel'), ('Fitness'), ('Beauty');

-- Video Tags
INSERT INTO `youtube`.`video_tags` (video_id, tag_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

-- User Videos
INSERT INTO `youtube`.`user_videos` (publish_time, user_id, video_id) VALUES
('2023-01-01 10:00:00', 1, 1),
('2023-02-01 11:00:00', 2, 2),
('2023-03-01 12:00:00', 3, 3),
('2023-04-01 13:00:00', 4, 4),
('2023-05-01 14:00:00', 5, 5);

-- User Subscriptions
INSERT INTO `youtube`.`user_subscriptions` (channel_id, user_id) VALUES
(1, 2), (2, 3), (3, 4), (4, 5), (5, 1);

-- Video Likes
INSERT INTO `youtube`.`video_likes` (like_selection, timestamp, user_id, video_id) VALUES
('like', '2023-06-01 10:00:00', 2, 1),
('dislike', '2023-06-01 10:30:00', 3, 1),
('like', '2023-06-01 11:00:00', 4, 2),
('dislike', '2023-06-01 11:30:00', 5, 2),
('like', '2023-06-01 12:00:00', 1, 3);

-- Playlists
INSERT INTO `youtube`.`playlists` (name, creation, visibility) VALUES
('Tech Reviews', '2023-01-10 10:00:00', 'public'),
('Cooking Recipes', '2023-02-10 11:00:00', 'public'),
('Travel Vlogs', '2023-03-10 12:00:00', 'public'),
('Workout Routines', '2023-04-10 13:00:00', 'public'),
('Makeup Tutorials', '2023-05-10 14:00:00', 'public');

-- Playlist Videos
INSERT INTO `youtube`.`playlist_videos` (playlist_id, video_id, user_id) VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5);

-- Comments
INSERT INTO `youtube`.`comments` (text, timestamp, user_id, video_id) VALUES
('Great video!', '2023-06-01 15:00:00', 2, 1),
('Very informative.', '2023-06-01 15:30:00', 3, 2),
('Loved the tips!', '2023-06-01 16:00:00', 4, 3),
('Excellent workout!', '2023-06-01 16:30:00', 5, 4),
('Beautiful tutorial.', '2023-06-01 17:00:00', 1, 5);

-- Comment Likes
INSERT INTO `youtube`.`comment_likes` (like_selection, timestamp, user_id, comment_id) VALUES
('like', '2023-06-01 18:00:00', 3, 1),
('dislike', '2023-06-01 18:30:00', 4, 2),
('like', '2023-06-01 19:00:00', 5, 3),
('dislike', '2023-06-01 19:30:00', 1, 4),
('like', '2023-06-01 20:00:00', 2, 5);
