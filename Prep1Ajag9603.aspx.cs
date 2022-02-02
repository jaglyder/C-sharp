using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MIS316_Prep1ajag9603 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            // declare variables for the input  and the sum
        decimal decValueA = 0m;
        decimal decValueB = 0m;
        decimal decSum = 0;

        // read the two numbers as an input and store in variables 
        decValueA = Convert.ToDecimal(txtValueA.Text);
        decValueB = Convert.ToDecimal(txtValueB.Text);

        //calcualte the sum and store in a varaible
        decSum = decValueA + decValueB;

        //output the sum to the page
        lblSum.Text = decSum.ToString();

        }
        catch (Exception)
        {
            //input could not be converted, display an error message 
            lblSum.Text = "Please enter a number.";
        }

        
    }
}