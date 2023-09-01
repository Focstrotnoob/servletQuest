<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <link rel="stylesheet" href="static/main.css" type="text/css">
  <title>Acquaintance</title>
</head>

<body>
<h1> Prologue </h1>
<p>
  You are standing in the spaceport and ready to board <br>
  his ship. Isn't that what you've been dreaming about? Become a captain <br>
  a galactic vessel with a crew that will make <br>
  feats under your command. <br>
  So go ahead!!
</p>

<h2> Getting to know the crew </h2>
<p>
  When you boarded the ship, you were greeted by a girl with a black folder in her hands: <br>
  - Hello, Commander! I am Zinaida, your assistant. See? There in the corner drinking coffee <br>
  our navigator - Sergeant is a Fume Train, our flight mechanic - Black Bogdan sleeps under the helm <br>
  and Sergey Steely Heel is photographing him - our navigator. <br>
  And how to contact you?
</p>

<form action="start" method="post">
  <p>
    <input class="text-field__input" type="text" name="user" placeholder="Your nickname" size="18" />
  </p>
  <p>
    <button class= "button" type="submit">Send</button>
    <button class= "button" type="reset">Cancel</button>
  </p>
</form>



</body>

</html>
