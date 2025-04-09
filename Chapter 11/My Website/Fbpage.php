<?php
  require('page.php');
  $feedbackpage = new Page();
  $feedbackpage->content = 
    "<article>
        <h1>Feedback</h1>
        <form action='feedback.php' method='post'>
            <p><strong>Your name:</strong><br/>
            <input type='text' name='name' size='40' /></p>
                
            <p><strong>Your email address:</strong><br/>
            <input type='text' name='email' size='40' /></p>
                
            <p><strong>Your feedback:</strong><br/>
            <textarea name='feedback' rows='8' cols='40'>
            </textarea></p>
                
            <p><input type='submit' value='Send Feedback' /></p>
        </form>
    </article>";

   $feedbackpage->Display();
?>