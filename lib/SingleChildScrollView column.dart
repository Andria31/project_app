import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: SingleScroll(),));
}

class SingleScroll extends StatelessWidget {
  const SingleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LETS READ A STORY"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
                       Text("CINDRELLA FAIRYTALE",
            style: GoogleFonts.abel(
              fontWeight: FontWeight.bold,
              fontSize: 90,
              color: Colors.blue,
            ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection:Axis.vertical,
                child: Container(
                  height: 500,
                  width: double.infinity,
                  child:const Text("""              ONCE UPON A TIME a girl named Cinderella lived with her stepmother and two stepsisters.  
                    Poor Cinderella had to work hard all day long so the others could rest. 
                    It was she who had to wake up each morning when it was still dark and cold to start the fire.  
                    It was she who cooked the meals. It was she who kept the fire going. 
                    The poor girl could not stay clean, from all the ashes and cinders by the fire.



                    “What a mess!” her two stepsisters laughed.  And that is why they called her “Cinderella.”
                    
                    
                    
                    
                    One day, big news came to town.  
                    The King and Queen were going to have a ball!  
                    It was time for the Prince to find a bride. 
                    All of the young ladies in the land were invited to come.  
                    They were wild with joy! They would wear their most beautiful gown and fix their hair extra nice. 
                    Maybe the prince would like them!

                    At Cinderella’s house, she now had extra work to do.  
                    She had to make two brand-new gowns for her step-sisters.  

                    “Faster!” shouted one step-sister.

                    “You call that a dress?” screamed the other.  

                     “Oh, dear!” said Cinderella.  “When can I–“
                      The stepmother marched into the room.  “When can you WHAT?”
                      
                      “Well,” said the girl, “when will I have time to make my own dress for the ball?”

                      “You?” yelled the stepmother.  “Who said YOU were going to the ball?”

                      “What a laugh!” said one step-sister.
                      
                      “Such a mess!” They pointed at Cinderella.  All of them laughed.
                      
                      Cinderella said to herself, “When they look at me, maybe they see a mess.  But I am not that way. 
                       And if I could, I WOULD go to the ball.”
                      
                      Soon the time came for the stepmother and step-sisters to leave for the big party.
                      
                      
                      Their fine carriage came to the door. The stepmother and step-sisters hopped inside. 
                       And they were off.

                       “Good-bye!” called Cinderella.  
                       “Have a good time!” But her stepmother and step-sisters did not turn around to see her.
                       
                       “Ah, me!” said Cinderella sadly.  The carriage rode down the street. 
                        She said aloud, “I wish I could go to the ball, too!”

                        Then - Poof!
                        
                        All of a sudden, in front of her was a fairy.
                        
                        “You called?” said the fairy.
                        
                        “Did I?” said Cinderella.  “Who are you?”

                        “Why, your Fairy Godmother, of course!  I know your wish.  And I have come to grant it.”
                        
                        “But…” said Cinderella, “my wish is impossible.”
                        
                        “Excuse me!” said the Fairy Godmother in a huff.  “Did I not just show up out of thin air?”
                        
                        “Yes, you did,” said Cinderella.
                        
                        “Then let me be the one to say what is possible or not!”
                        
                        “Well, I think you know I want to go to the ball, too.” She looked down at her dirty clothes.
                        
                         “But look at me.”
                        
                        “You do look a bit of a mess, child,” said the Fairy Godmother.
                        
                        “Even if I had something nice to wear," said the girl, "I would have no way to get there."
                        
                        “Dear me, all of that is possible,” said the Fairy. With that, she tapped her wand on Cinderella’s 
                        
                        
                        Then I must be sure to leave the ball before midnight!” said Cinderella.

                        “Good idea,” said the Fairy Godmother.  
                        She stepped back. “My work is done.” And with that, the Fairy Godmother was gone.
                        
                        Cinderella looked around her. 
                         "Did that even happen?" 
                          But there she stood in a fine gown, and with a golden band in her hair. 
                           And there were her driver and four horses before her, waiting.
                        
                        “Coming?” called the driver.
                        
                        She stepped into the carriage.  And they were off.
                        
                        Over at the ball, the Prince did not know what to think.
                          “Why do you have that sad look on your face?” the Queen said to her son.  
                          “Look around you! You could not ask for finer maidens than these.”
                        
                        “I know, Mother,” said the Prince.  
                        Yet he knew something was wrong. He had met many of the young women. 
                         Yet after he said “hello,” one by one, he could find nothing more to say."""),
                ),
              ),
            ),
          ],
      ),
    );
  }
}
