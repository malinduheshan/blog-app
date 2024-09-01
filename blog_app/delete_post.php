<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];

    if (empty($id)) {
        echo json_encode(['status' => 'error', 'message' => 'Invalid post ID.']);
        exit;
    }

    // Delete post
    $stmt = $conn->prepare("DELETE FROM posts WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo json_encode(['status' => 'success', 'message' => 'Post deleted successfully.']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Error deleting post.']);
    }

    $stmt->close();
}
?>