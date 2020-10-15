using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BattleshipsGameTask
{
    public partial class _Default : System.Web.UI.Page
    {

        static string[] targetsSelected = new string[3];
        static List<ImageButton> enemyPosition; // create a list for all the enemy position buttons
        static Random rand = new Random(); // create a new instance for the random class called rand
        static string targetToShoot;
        static bool ShipsSetUp = false;
     
        static string[] Position = { "a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1", "i1" ,"j1",
                                     "a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2", "i2" ,"j2",
                                     "a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3", "i3" ,"j3",
                                     "a4", "b4", "c4", "d4", "e4", "f4", "g4", "h4", "i4" ,"j14",
                                     "a5", "b5", "c5", "d5", "e5", "f5", "g5", "h5", "i5" ,"j5",
                                     "a6", "b6", "c6", "d6", "e6", "f6", "g6", "h6", "i6" ,"j6",
                                     "a7", "b7", "c7", "d7", "e7", "f7", "g7", "h7", "i7" ,"j7",
                                     "a8", "b8", "c8", "d8", "e8", "f8", "g8", "h8", "i8" ,"j8",
                                     "a9", "b9", "c9", "d9", "e9", "f9", "g9", "h9", "i9" ,"j9",
                                     "a10","b10","c10","d10", "e10", "f10", "g10", "h10", "i10" ,"j10"};

       
        protected void Page_Load(object sender, EventArgs e)
        {




            LoadButtons();
            int shipsSetup = 0;
            if (!ShipsSetUp)
            {
                while (shipsSetup < 3)
                {
                    int index = rand.Next(enemyPosition.Count());
                    // create a local variable called index and choose a random button from the enemy position list
                    //enemyPosition[index] = "enemyship";

                    // checke it has not already been raqndomly selected

                    targetsSelected[shipsSetup] = enemyPosition[index].ID;
                    shipsSetup++;
                }
                ShipsSetUp = true;
            }
        }

        private void LoadButtons()
        {
            // this function will load all the buttons into the lists we declared above
            // we load all of the player and enemy buttons first

            enemyPosition = new List<ImageButton> { a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,
                                                    a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,
                                                    a3,b3,c3,d3,e3,f3,g3,h3,i3,j3,
                                                    a4,b4,c4,d4,e4,f4,g4,h4,i4,j4,
                                                    a5,b5,c5,d5,e5,f5,g5,h5,i5,j5,
                                                    a6,b6,c6,d6,e6,f6,g6,h6,i6,j6,
                                                    a7,b7,c7,d7,e7,f7,g7,h7,i7,j7,
                                                    a8,b8,c8,d8,e8,f8,g8,h8,i8,j8,
                                                    a9,b9,c9,d9,e9,f9,g9,h9,i9,j9,
                                                    a10,b10,c10,d10,e10,f10,g10,h10,i10,j10 };




            // this loop will go through each of the enemy position button
            // then it will add them to the enemy location drop down list for us
            // it will also remove all Tags from the enemy location buttons
            for (int i = 0; i < enemyPosition.Count; i++)
            {
                // enemyPosition[i].Tag = null;
                EnemyDropDownList.Items.Add(enemyPosition[i].ID);

            }
        }

        protected void EnemyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            targetToShoot = EnemyDropDownList.SelectedValue;
        }


        protected void AttackButton_Click(object sender, ImageClickEventArgs e)
        {
            //Loop through enemy ships positions to find a match 

            int t, i, pos;
            int hit = 0;
            targetToShoot = EnemyDropDownList.SelectedValue;
            for (t = 0; t < 3; t++)
            {
                    if (targetsSelected[t] == targetToShoot)
                    {
                        pos = Array.IndexOf(Position, targetToShoot);
                        enemyPosition[pos].ImageUrl = "/images/fire.jpg";
                        hit = 1;
                        break;
                    }
            }
            
            if (hit == 0)
            {
                //change background to fail
                pos = Array.IndexOf(Position, targetToShoot);
                enemyPosition[pos].ImageUrl = "/images/fail.jpg";
            }
        }

    }
}


