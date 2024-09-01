<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $content = $_POST['content'];


    if (empty($title) || empty($content)) {
        echo json_encode(['status' => 'error', 'message' => 'Title and content are required.']);
        exit;
    }


    // insert data from posts
    $stmt = $conn->prepare("INSERT INTO posts (title, content) VALUES (?, ?)");
    $stmt->bind_param("ss", $title, $content);

    if ($stmt->execute()) {
        echo json_encode(['status' => 'success', 'message' => 'Post created successfully.']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Error creating post.']);
    }

    $stmt->close();
}
?>