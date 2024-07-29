USE `spotify`;

-- Insert credit card details
INSERT INTO `spotify`.`credit_card_details` (card_number, expiry_month, expiry_year, security_code)
VALUES
(1234567812345678, 12, 25, 123),
(8765432187654321, 11, 24, 321);

-- Insert PayPal details
INSERT INTO `spotify`.`paypal_details` (username)
VALUES
('user1_paypal@example.com'),
('user2_paypal@example.com');

-- Insert payment history
INSERT INTO `spotify`.`payment_history` (date, order_number)
VALUES
('2024-07-01 10:00:00', 10001),
('2024-07-01 11:00:00', 10002),
('2024-07-01 12:00:00', 10003),
('2024-07-01 13:00:00', 10004);

-- Insert subscriptions
INSERT INTO `spotify`.`subscriptions` (start_date, renewal_date, payment_form, credit_card_details_id, paypal_details_id, payment_history_id)
VALUES
('2024-07-01', '2025-07-01', 'credit card', 1, NULL, 1),
('2024-07-01', '2025-07-01', 'credit card', 2, NULL, 2),
('2024-07-01', '2025-07-01', 'PayPal', NULL, 1, 3),
('2024-07-01', '2025-07-01', 'PayPal', NULL, 2, 4);

-- Insert users
INSERT INTO `spotify`.`users` (email, password, username, birthday, sex, country, postal_code, subscription_id)
VALUES
('user1@example.com', 'password123', 'user1', '1990-01-01', 'male', 'USA', '10001', 1),
('user2@example.com', 'password456', 'user2', '1985-02-02', 'female', 'USA', '10002', 2),
('user3@example.com', 'password789', 'user3', '1992-03-03', 'male', 'USA', '10003', 3),
('user4@example.com', 'password012', 'user4', '1988-04-04', 'female', 'USA', '10004', 4),
('user5@example.com', 'password345', 'user5', '1995-05-05', 'other', 'USA', '10005', NULL);

-- Insert playlists
INSERT INTO `spotify`.`playlists` (title, number_of_songs, creation_date, status, deletion_date, shared_with_id)
VALUES
('Playlist One', 5, '2024-07-01 10:00:00', 'active', NULL, NULL),
('Playlist Two', 3, '2024-07-01 11:00:00', 'active', NULL, NULL);

-- Insert artists
INSERT INTO `spotify`.`artists` (name, image_url)
VALUES
('Artist One', 'http://example.com/image1.jpg'),
('Artist Two', 'http://example.com/image2.jpg'),
('Artist Three', 'http://example.com/image3.jpg');

-- Insert albums
INSERT INTO `spotify`.`albums` (title, publication_year, artist_id, image_url)
VALUES
('Album One', 2022, 1, 'http://example.com/album1.jpg'),
('Album Two', 2023, 2, 'http://example.com/album2.jpg'),
('Album Three', 2021, 3, 'http://example.com/album3.jpg');

-- Insert songs
INSERT INTO `spotify`.`songs` (title, duration, playback_count, album_id)
VALUES
('Song One', 210, 100, 1),
('Song Two', 180, 150, 1),
('Song Three', 200, 120, 2),
('Song Four', 230, 110, 2),
('Song Five', 250, 90, 3);

-- Insert shared songs
INSERT INTO `spotify`.`shared` (date_added_song, playlist_id, user_id, song_id)
VALUES
('2024-07-01 10:10:00', 1, 1, 1),
('2024-07-01 10:20:00', 1, 2, 2),
('2024-07-01 10:30:00', 1, 3, 3),
('2024-07-01 11:10:00', 2, 4, 4),
('2024-07-01 11:20:00', 2, 5, 5);

-- Insert following artists
INSERT INTO `spotify`.`following` (artist_id, user_id)
VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert favourite albums
INSERT INTO `spotify`.`favourite_albums` (album_id, user_id)
VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert favourite songs
INSERT INTO `spotify`.`favourite_songs` (song_id, user_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert similar artists
INSERT INTO `spotify`.`similar_artists` (artist_id, similar_artist_id)
VALUES
(1, 2),
(2, 3),
(3, 1);