using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep2A : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //store the color that the user was entered in a variable
        string strNewColor = txtNewColor.Text;


        //loop through all colors to see if the new color already exists
        bool blnColorAlreadyExists = false;

        foreach (ListItem liColor in rblColors.Items)
        {
            if (liColor.Text == strNewColor)
            {
                blnColorAlreadyExists = true;
            }


        }


        //only add the new color if it doesnt exist
        if (blnColorAlreadyExists == true)
        {
            lblError.Text = "This color already exists!";
        }
        else
        {
            //the new color is not in the list, clear the error message
            lblError.Text = "";
            rblColors.Items.Add(strNewColor);
            txtNewColor.Text = ""; //clear so the user cant try to add again

            //loop through all the colors to determine how many primary, secondary, and other colors there are

            //create counter variables
            int intPrimaryCount = 0;
            int intSecondaryCount = 0;
            int intOtherCount = 0;

            foreach (ListItem liColor in rblColors.Items)
            {
                 // red, blue and yello are primary colors
                 if (liColor.Text.ToLower() == "red" || liColor.Text.ToLower() == "blue" || liColor.Text.ToLower() == "yellow")
                 {
                    // this a primary, increase the counter by 1
                    intPrimaryCount++;
                 }

                        // green, orange and purple are secondary colors
                        else if (liColor.Text.ToLower() == "green" || liColor.Text.ToLower() == "orange" || liColor.Text.ToLower() == "purple")
                        {
                              // this a secondary, increase the counter by 1
                              intSecondaryCount++;
                        }

                                  // everything else is an other color
                              else
                              {
                                  //this is an other color, increase the counter by 1
                                   intOtherCount++;
                              }

            }

            //build output message and show the user
            lblMessage.Text = "The current list has:<br />";
            lblMessage.Text += intPrimaryCount.ToString() + " primary colors<br />";
            lblMessage.Text += intSecondaryCount.ToString() + " secondary colors<br />";
            lblMessage.Text += intOtherCount.ToString() + " other colors";

        }



    }







    protected void rblColors_SelectedIndexChanged(object sender, EventArgs e)
    {
        
            // make the remove button visible
            btnRemoveSelected.Visible = true;
        
    }

    protected void btnRemoveSelected_Click(object sender, EventArgs e)
    {
        // remove the color that the user has selected
        rblColors.Items.RemoveAt(rblColors.SelectedIndex);

        // hide so that a selction must be made again
        btnRemoveSelected.Visible = false;
    }
}








