<?php
  require('page.php');

  $homepage = new Page();
  $homepage->content = "<article>
                         <h1>Fusion Artists</h1>
                         <p>Pick your two favorite genres and see the top Artists in the new genre.</p>
                        </article>
                        <form action='Artists.php' method='post'>
                            <select name='genre1'>
                                <option value='Pop'>Pop</option>
                                <option value='Rock'>Rock</option>
                                <option value='Punk'>Punk</option>
                                <option value='Hip-hop'>Hip-hop</option>
                                <option value='Country'>Country</option>
                            </select>
                            <select name='genre2'>
                                <option value='Pop'>Pop</option>
                                <option value='Rock'>Rock</option>
                                <option value='Punk'>Punk</option>
                                <option value='Hip-hop'>Hip-hop</option>
                                <option value='Country'>Country</option>
                            </select>
                            <input type='submit' value='Submit' />
                        </form>";
                        
$homepage->Display();

?>