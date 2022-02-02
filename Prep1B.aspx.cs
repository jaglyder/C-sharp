using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep1B : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void btnNameContinue_Click(object sender, EventArgs e)
    {
        // if the user selected no siblings, hide the name panel and
        // output a message about being an only child
        if (rbSiblingsNo.Checked == true)
        {
            pnlName.Visible = false;
            lblMessage.Text = txtName.Text + " is an only child.";
        }
        else if (rbSiblingsYes.Checked == true)
        {
            //otherwise hide the name panel and show the number of siblings panel
            pnlName.Visible = false;
            pnlNumberofSiblings.Visible = true;
        }
        
    }

    protected void btnSiblingsContinue_Click(object sender, EventArgs e)
    {
        //hide the number of siblings panel
        //output a message saying how many siblings the person has
        pnlNumberofSiblings.Visible = false;
        lblMessage.Text = txtName.Text + " has " + txtNumberOfSiblings.Text + " siblings.";
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {

    }
}