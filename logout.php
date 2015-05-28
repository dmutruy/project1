<?php
session_start();
unset($_SESSION['id_user_position']);// можно вместо session_destroy();
?>
 <script>
    document.location.href = 'index.php';
</script>
<?
?>