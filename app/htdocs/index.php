<?php
$username = "example_user";
$password = "example_pass";
$hostname = "db";
$db = "example_db";
// Database connection
$pdo = new PDO("mysql:host={$hostname};dbname={$db};charset=utf8", $username, $password);

// Execute SQL and display the result on the screen
$sql = "SELECT * FROM examples";
$stmt = $pdo->prepare($sql);
$stmt->execute();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
  echo "id: {$row["id"]}, name: {$row["name"]}<br/>\n";
}
