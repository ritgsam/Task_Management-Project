
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `recipient` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `notifications` (`id`, `message`, `recipient`, `type`, `date`, `is_read`) VALUES
(11, '\'Design new company website\' has been assigned to you. Please review and start working on it', 2, 'New Task Assigned', '2024-11-27', 0);


CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('pending','in_progress','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tasks` (`id`, `title`, `description`, `assigned_to`, `due_date`, `status`, `created_at`) VALUES
(1, 'Task 1', 'Task Description', 7, NULL, 'completed', '2024-11-29 16:47:37'),
(2, 'Update client database', 'Ensure all client information is current and complete', 7, '2024-09-07', 'pending', '2024-11-27 08:02:27'),
(3, 'Design new company website', 'new website design', 2, '2024-11-28', 'pending', '2024-09-06 08:04:20');


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Oliver', 'admin', '$2y$10$TnyR1Y43m1EIWpb0MiwE8Ocm6rj0F2KojE3PobVfQDo9HYlAHY/7O', 'admin', '2024-11-28 07:10:04'),
(7, 'John', 'john', '$2y$10$CiV/f.jO5vIsSi0Fp1Xe7ubWG9v8uKfC.VfzQr/sjb5/gypWNdlBW', 'employee', '2024-11-29 17:11:21'),


ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_to` (`assigned_to`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`);
COMMIT;
