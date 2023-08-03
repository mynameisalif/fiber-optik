<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Admin Polkesma</title>
    <link rel="stylesheet" href="assets/login.css">
  </head>
  <body>
    <div class="center">
      <h1>POLKESMA</h1>
      <form action="config/login.php" method="post">
        <div class="txt_field">
          <input type="text" name="username" required>
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
          <input type="password"  name="password" required>
          <span></span>
          <label>Password</label>
        </div>
        <!-- <div class="pass">Forgot Password?</div> -->
        <input type="submit" name="login" value="Login">
        <!-- <div class="signup_link">
          Not a member? <a href="#">Signup</a>
        </div> -->
      </form>
    </div>

  </body>
</html>